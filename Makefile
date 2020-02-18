all: build

build: lint test

shfmt:
	stank . | xargs shfmt -w -i 4

bashate:
	stank . | xargs bashate

shlint:
	stank . | xargs shlint

checkbashisms:
	stank . | xargs checkbashisms -n -p

shellcheck:
	stank . | xargs shellcheck

lint: shfmt bashate shlint checkbashisms shellcheck

test-version:
	vast -v

test-usage:
	vast -h

integration-test:
	sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test
