.DEFAULT_GOAL := help
.SUFFIXES:

SWAGGER_FILE := source/openapi/spec.json
SLATE_FILE   := source/index.html.md

.phony: build-swagger
build-swagger: ## Build swagger spec into slate markdown
	@widdershins --environment widdershins.cfg -o $(SLATE_FILE) $(SWAGGER_FILE)

.phony: build-slate
build-slate: build-swagger ## Build slate site from markdown
	@bundle exec middleman build

.phony: build
build: build-swagger build-slate ## Build site

.phony: clean
clean: ## Clean local compiled site
	echo foo

.phony: serve
serve: build-swagger ## Serve locally at https://localhost:4567
	@bundle exec middleman server

.phony: help
help: ## Print Makefile usage.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
