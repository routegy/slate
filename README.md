# Routegy Docs (API)

Public documentation for the [Routegy API](https://github.com/routegy/routegy-api) at <https://api.docs.routegy.com>.

## tl;dr

This project converts a [swagger (OpenApi 2.0) spec file](source/openapi/spec.json) into a [Slate markdown document](source/index.html.md) which is converted into html.

## Quick Start

1) Convert the swagger config into Slate markdown:

```
make build-swagger
```

2) Host the slate docs locally:

```
make serve
```

3) Build docs into static site:

```
make build
```

## Usage

```
⇒  make help
build-swagger                  Build swagger spec into slate markdown
build-slate                    Build slate site from markdown
build                          Build site
clean                          Clean local compiled site
serve                          Serve locally at https://localhost:4567
help                           Print Makefile usage.
```

## Dependencies

* [Widdershins](https://github.com/Mermade/widdershins)
* [Slate](https://github.com/slatedocs/slate)
