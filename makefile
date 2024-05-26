.PHONY: test
test: fmt
	@mojo test -I .

.PHONY: run
run: fmt
	@mojo run signals/main.mojo

.PHONY: build
build: fmt
	@mkdir -p dist
	@mojo package signals -o dist/signals.mojopkg

.PHONY: clean
clean: 
	rm -rf dist

.PHONY: fmt
fmt: 
	@mojo format signals
	@mojo format test