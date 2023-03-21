.PHONY: all build lint test clean

all: build

build: lint test

shfmt:
	stank . | xargs shfmt -w -i 4

bashate:
	stank . | xargs bashate

shellcheck:
	stank -exInterp zsh . | grep -v node_modules | xargs shellcheck

funk:
	funk .

checkmake:
	find . \
		-type f \
		\( -iname '*makefile*' -o -iname '*.mk' -o -iname '*.make' \) \
		-print0 | \
		xargs -0 -n 1 checkmake

lint: shfmt bashate shellcheck funk checkmake

test-version:
	vast -v

test-usage:
	vast -h

integration-test:
	sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test

clean:
	@echo "nothing to do"
