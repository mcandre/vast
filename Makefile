.PHONY: all audit build lint test clean

all: build

build: lint test

safety:
	@safety check

audit: safety

shfmt:
	@stank -exInterp zsh . | \
		grep -v node_modules | \
		xargs -n 1 shfmt -w -i 4

bashate:
	@stank . | \
		xargs -n 1 bashate -i E006

shellcheck:
	@stank -exInterp zsh . | \
		grep -v node_modules | \
		xargs -n 1 shellcheck

funk:
	@funk .

yamllint:
	@yamllint -s .yamllint .

checkmake:
	@find . \
		-type f \
		\( \
			-iname Makefile -o \
			-iname GNUmakefile -o \
			-iname '*.mk' -o \
			-iname '*.make' \
		\) \
		-print0 | \
			xargs -0 -n 1 checkmake

lint: shfmt bashate shellcheck funk yamllint checkmake

test-version:
	@vast -v

test-usage:
	@vast -h

integration-test:
	@sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test

clean:
	@echo "nothing to do"
