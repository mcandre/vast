# BUILDTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/) / [macOS](https://www.apple.com/macos) / [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) / etc.
* `printf` with `--` support
* GNU compatible [findutils](https://www.gnu.org/software/findutils/)
* [GNU grep](https://www.gnu.org/software/grep/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [make](https://pubs.opengroup.org/onlinepubs/009695299/utilities/make.html)
* [Go](https://go.dev/) 1.20.2+ with `go install github.com/mcandre/accio/cmd/accio@v0.0.4` and `accio -install`
* [Python](https://www.python.org/) 3.11.2+ with `pip[3] install --upgrade pip setuptools` and `pip[3] install -r requirements-dev.txt`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10
* [direnv](https://direnv.net/) 2

# BUILD: LINT + TEST

```console
$ make
```

# LINT

```console
$ make lint
```

# TEST

```console
$ make test
```
