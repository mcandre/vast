# BUILDTIME REQUIREMENTS

* [Go](https://go.dev/) 1.19+ with `go install github.com/mcandre/accio/cmd/accio@v0.0.3` and `accio -install`
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [GNU make](https://www.gnu.org/software/make/)
* [Python](https://www.python.org/) 3.11.2+ with `pip[3] install --upgrade pip setuptools` and `pip[3] install -r requirements-dev.txt`
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)

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
