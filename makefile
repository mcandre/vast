.PHONY: all audit build lint test clean

all: build

build: lint test

safety:
	@safety check

audit: safety

shfmt:
	@stank -exInterp zsh . | \
		xargs -n 1 shfmt -w -i 4

bashate:
	@stank . | \
		xargs -n 1 bashate -i E006

shellcheck:
	@stank -exInterp zsh . | \
		xargs -n 1 shellcheck

funk:
	@funk .

slick:
	@stank -sh . | \
		xargs -n 1 slick

unmake:
	@unmake makefile
	@unmake install.mk

lint: shfmt bashate shellcheck funk slick unmake

test-version:
	@vast -v

test-usage:
	@vast -h

integration-test:
	@sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test

clean:
	@echo "nothing to do"
