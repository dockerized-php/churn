all: build test

build:
	@echo ">> Building image"
	docker build -t dockerizedphp/churn:latest latest/
	docker build -t dockerizedphp/churn:0.4 0.4/

test:
	@echo ">> Run test"
	docker run --rm -ti dockerizedphp/churn 2>/dev/null; true
	docker run --rm -ti dockerizedphp/churn:0.4 2>/dev/null; true
