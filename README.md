# vast: a build tool for shell scripts

# EXAMPLE

```console
$ cd example

$ vast -l
v-lint
v-test
v-build

$ vast
Running integration test suite.
```

See `vast -h` for more detail.

# ABOUT

![Vishvakarma the all-architect](https://raw.githubusercontent.com/mcandre/vast/master/vast.jpg)

vast is a build tool for shell script projects.

vast is written in POSIX sh for portability, though you may use it with any POSIXy shell, including derivatives such as bash, zsh, and ksh.

If you're familiar with `make` and `Makefile`, then you may enjoy `vast` and `vast.sh` files.

By convention, individual tasks are defined as executable `v-<task name>` shell scripts in a per-project `.vast.d` directory.

Compound tasks can invoke child tasks by simply running the command `v-<child task name>`.

# INSTALL

1. Copy the vast project locally.
2. Add `export PATH="${PATH}:<...>/vast/bin` to your shell's configuration file.

# RUNTIME REQUIREMENTS

* a UNIX environment with [coreutils](https://www.gnu.org/software/coreutils/) / [base](http://ftp.freebsd.org/pub/FreeBSD/releases/) / [macOS](https://www.apple.com/macos) / [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) / etc.
* `printf` with `--` support

# CONTRIBUTING

See [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

* Inspired by the excellent [mage](https://magefile.org/) build system for Go projects
* [bashate](https://github.com/openstack/bashate), a shell script style linter
* [cmake](https://cmake.org/) for C/C++ projects
* [GNU autotools](https://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html), a build system for Linux C/C++ projects
* [GNU make](https://www.gnu.org/software/make/), a popular make implementation with GNU extensions
* [Gradle](https://gradle.org/), a build system for JVM projects
* [lake](https://luarocks.org/modules/steved/lake), a Lua task runner
* [Mage](https://magefile.org/), a task runner for Go projects
* [npm](https://www.npmjs.com/), [Grunt](https://gruntjs.com/), Node.js task runners
* [POSIX make](https://pubs.opengroup.org/onlinepubs/009695299/utilities/make.html), a task runner standard for C/C++ and various other software projects
* [Rake](https://ruby.github.io/rake/), a task runner for Ruby projects
* [Shake](https://shakebuild.com/), a task runner for Haskell projects
* [ShellCheck](https://www.shellcheck.net/), a shell script linter with a rich collection of rules for promoting safer scripting
* [slick](https://github.com/mcandre/slick), a linter to enforce stricter, unextended POSIX sh syntax compliance
* [stank](https://github.com/mcandre/stank), a collection of POSIX-y shell script linters
* [tinyrick](https://github.com/mcandre/tinyrick) for Rust projects
