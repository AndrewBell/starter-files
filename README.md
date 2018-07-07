# Starter Files

A collection of common project files and a utility to copy them to a new project.

## Goals

Easily bootstrap new projects with common files.

## Requirements

[Bash](https://www.gnu.org/software/bash/)

    * [Windows via Git for Windows](http://gitforwindows.org/)
    
    * OSX & (Most) Linux users should already have Bash

[git](https://git-scm.com/downloads)

### Optional

[Boxes](https://boxes.thomasjensen.com/download.html) - Used in "Generate License Headers" example below.

## Bootstrap a project

`sh ./bootstrap.sh ../source-project`

If conflicts are detected, the script will prompt you for action.

## Generate License Headers

Using `boxes`, you can wrap the license-header.txt into a code comment block

For `#` comments (e.g. shell scripts)

```bash
cat license-header.txt | boxes -d pound-cmt
```

For `\*` comments (e.g. Java)

```bash
cat license-header.txt | boxes -d javadoc
```

For those who need levity in their licence headers

```bash
cat license-header.txt | boxes -d unicornsay
```

## Todo

* Language specific bootstrapping
* Non-interactive flag for `bootstrap.sh`
* Script to add license-header.txt to files

## Contributing

If you would like to make an update to this project, fork and open a pull request. If you have any questions, please feel free to reach out (contact info below)

## Contact Me

### Andrew "Doc" Bell ###

homepage: www.recursivechaos.com

email: andrew@recursivechaos.com

twitter: @recursive_chaos
