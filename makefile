.POSIX:
.SILENT:
.PHONY: all \
	audit \
	build \
	lint \
	shfmt \
	bashate \
	shellcheck \
	funk \
	slick \
	unmake \
	test \
	test-version \
	test-usage \
	test-integration

all: build

build: lint test

safety:
	safety check

audit: safety

shfmt:
	stank -exInterp zsh . | \
		xargs -n 1 shfmt -w -i 4

bashate:
	stank . | \
		xargs -n 1 bashate -i E006

shellcheck:
	stank -exInterp zsh . | \
		xargs -n 1 shellcheck

funk:
	funk .

slick:
	stank -sh . | \
		xargs -n 1 slick

unmake:
	unmake .

lint: shfmt bashate shellcheck funk slick unmake

test-version:
	vast -v

test-usage:
	vast -h

test-integration:
	sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test
