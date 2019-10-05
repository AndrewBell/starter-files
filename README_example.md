# Project Name

Project Description

## Goals

Begin with the end in mind

## Requirements

Install the following via [Homebrew for Mac/Linux](https://brew.sh/) or [Chocolatey for Windows](https://chocolatey.org/) (where documented)

  * [Java 8 JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
  * [Gradle](https://docs.gradle.org/current/userguide/installation.html)(Optional you can use the [Gradle wrapper](https://docs.gradle.org/3.3/userguide/gradle_wrapper.html) instead)
  * [Docker](https://docs.docker.com/installation/)(Optional, if you would like to run the example in Docker)
  * [Node](https://nodejs.org/en/download/) - Tested on v8.11.3
  * [npm](https://www.npmjs.com/package/npm) - (Bundled with Node) Tested on v6.1.0
  * [Bash](https://www.gnu.org/software/bash/)
    * [Windows via Git for Windows](http://gitforwindows.org/)  
    * OSX - Users should already have Bash via the Terminal app
    * Linux - Many distributions include Bash, if not, you likely know what you're doing anyway
  * terraform - `brew install terraform` or `choco install terraform`
  * kubctl - `brew install kubernetes-cli` or `choco install kubernetes-cli`
  * az - `brew install azure-cli` or `choco install azure-cli` (For Azure deployment)
  * helm - `brew install kubernetes-helm` or `choco install kubernetes-helm` (For local deployment)
  * Google Cloud SDK - `brew install google-cloud-sdk` or `choco install gcloudsdk`
  * kubernetes - Try [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)


### Optional

[git](https://git-scm.com/downloads) - Alternatively, download a zip of this GitHub repo.

## Running This Project

### Build

`gradle build`

### Test

`gradle test`

### Run

`gradle bootRun`

### Run Docker

`docker build . --tag projectname`

`docker run projectname`

## Contributing

If you would like to make an update to this project, fork and open a pull request. If you have any questions, please feel free to reach out (contact info below)

## Contact Me

### Andrew "Doc" Bell ###

homepage: www.recursivechaos.com

email: andrew@recursivechaos.com

twitter: @recursive_chaos
