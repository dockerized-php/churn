VERSIONS := 0.4 0.5 1.0 latest
BUILD_ALL_VERSIONS := $(addprefix build-, $(VERSIONS))
TEST_ALL_VERSIONS := $(addprefix test-, $(VERSIONS))

all: test

.PHONY: build build-base $(BUILD_ALL_VERSIONS)
build-base:
	docker build -t dockerizedphp/churn:base base

$(BUILD_ALL_VERSIONS): build-%: build-base
	docker build -t dockerizedphp/churn:$* $*

build: $(BUILD_ALL_VERSIONS)

.PHONY: test $(TEST_ALL_VERSIONS)
$(TEST_ALL_VERSIONS): test-%:
	@echo "Test $*"
	@docker run --rm dockerizedphp/churn:$* help

test: build $(TEST_ALL_VERSIONS)
