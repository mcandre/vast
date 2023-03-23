# reverso: Backwards lines it does!

# EXAMPLE

```console
$ reverso
Red
White
And
Blue
(Control+D)
Blue
And
White
Red
```

# INSTALL

1. Copy the reverso project locally.
2. Add `. <...>/lib/reverso.sh` to your shell's configuration file.

# RUNTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/) / [macOS](https://www.apple.com/macos) / [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) / etc.
* [zip](https://linux.die.net/man/1/zip)

# BUILDTIME REQUIREMENTS

* [vast](http://github.com/mcandre/vast)

# BUILD: LINT + TEST

Keep the pipeline working!

```console
$ vast [v-build]
```

# LINT

```console
$ vast v-lint
```

# TEST

```console
$ vast v-test
```
