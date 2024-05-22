.PHONY: test
test:
	@mojo format -q signals
	@poetry run mojo run test.mojo

.PHONY: run
run:
	@mojo format -q signals
	@poetry run mojo run signals/main.mojo

.PHONY: build
build: 
	@mojo format -q signals
	@mkdir -p dist
	@mojo package signals -o dist/signals.mojopkg

.PHONY: clean
clean: 
	rm -rf dist

.PHONY: fmt
fmt: 
	mojo format signals