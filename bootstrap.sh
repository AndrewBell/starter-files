#!/bin/bash
#
# Copy starter files to destination directory

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

if [ -z $1 ]; then
  err "Please supply a relative source destination."
  exit 1
fi

cp ./{.gitignore,Dockerfile,LICENSE.txt,.editorconfig} $1

cp ./README_example.md $1/README.md
