# BUILDTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/) / [macOS](https://www.apple.com/macos) / [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) / etc.
* `printf` with `--` support
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [GNU grep](https://www.gnu.org/software/grep/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [Go](https://go.dev/) 1.20.2+
* [Python](https://www.python.org/) 3.11.2+
* [Rust](https://www.rust-lang.org/en-US/) 1.68.2+
* a POSIX compliant [make](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/make.html) implementation (e.g. GNU make, BSD make, etc.)
* Provision additional dev tools with `make -f install.mk`

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
