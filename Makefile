all: build

build: lint test

shfmt:
	stank . | xargs shfmt -w -i 4

bashate:
	stank . | xargs bashate

checkbashisms:
	stank . | xargs checkbashisms -n -p

shellcheck:
	stank -exInterp zsh . | grep -v node_modules | xargs shellcheck

funk:
	funk .

lint: shfmt bashate checkbashisms shellcheck funk

test-version:
	vast -v

test-usage:
	vast -h

integration-test:
	sh -c "cd example && vast -l && vast && vast build"

test: test-version test-usage integration-test
