all: build test

build:
	@echo ">> Building image"
	docker build -t dockerizedphp/churn:latest latest/

test:
	@echo ">> Run test"
	docker run --rm -ti dockerizedphp/churn 2>/dev/null; true
