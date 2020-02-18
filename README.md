# vast: shell builds manifest.

# EXAMPLE

```console
$ cd example

$ cat vast.sh
#!/bin/bash
export vast_tasks='build itest'
export vast_origin='build'

$ vast -l
build
itest

$ vast
Running integration test suite.
```

See `vast -h` for more detail.

# ABOUT

![Vishvakarma the all-architect](https://raw.githubusercontent.com/mcandre/vast/master/vast.jpg)

vast is a build tool for shell script projects. vast is written in POSIX sh for portability, though you may use it with any POSIXy shell, including derivatives such as bash, zsh, and ksh. If you're familiar with `make` and `Makefile`, then you may enjoy `vast` and `vast.sh` files. By convention, individual tasks are defined as executables in `.vast.d/`

# INSTALL

1. Copy the vast project locally.
2. Add `export PATH="${PATH}:<...>/vast/bin` to your shell's configuration file.

# RUNTIME REQUIREMENTS

* a POSIX-compatible shell (e.g. `sh`, `bash`, `ksh`, `zsh`, etc.)

# BUILDTIME REQUIREMENTS

* [make](https://www.gnu.org/software/make/)
* [shfmt](https://github.com/mvdan/sh) (e.g. `go get github.com/mvdan/sh/cmd/shfmt`)
* [bashate](https://pypi.python.org/pypi/bashate/0.5.1)
* [shlint](https://rubygems.org/gems/shlint)
* [checkbashisms](https://sourceforge.net/projects/checkbaskisms/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [stank](https://github.com/mcandre/stank) (e.g. `go get github.com/mcandre/stank/...`)

# BUILD

```console
$ make
```

# SEE ALSO

* Inspired by the excellent [mage](https://magefile.org/) build system for Go projects
* [GNU make](https://www.gnu.org/software/make/), a classic task runner
* [cmake](https://cmake.org/) for C/C++ projects
* [tinyrick](https://github.com/mcandre/tinyrick) for Rust projects
* [dale](https://github.com/mcandre/dale) offers similar task runner features for D projects
