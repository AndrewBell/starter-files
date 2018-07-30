#!/bin/bash
#
# Copy starter files to destination directory.
# `README_example.md` is copied instead of the project's README
# If a file conflict is detected, script will prompt for action.
#
# Example: `sh ./bootstrap.sh ../source-project`
#
# Created by Andrew Bell
# www.recursivechaos.com
# andrew@recursivechaos.com
# Licensed under MIT license 2018. See LICENSE.txt for details.
#

declare -a FILES_TO_COPY=(
  ".gitignore"
  "Dockerfile"
  "LICENSE.txt"
  ".editorconfig"
  "README.md")

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

# Copy file to new directory, using their "example" if needed.
bootstrapCopy() {
  if [[ "${1}" = "README.md" ]]; then
    cp ./README_example.md $2/README.md
  else
    cp ./$1 $2
  fi
  echo "$1 copied to $2/$1"
}

copyWithOvewritePrompt() {
  local destination=$1
  shift
  local files=("$@")

  for file in "${files[@]}"; do
      if [ -f "$destination/$file" ]; then
        echo "Would you like to overwrite $file? (y)es/(n)o/e(x)it"
        read will_overwrite

        if [[ "${will_overwrite}" = "y" ]]; then
          bootstrapCopy $file $destination
        elif [[ "${will_overwrite}" = "n" ]]; then
          echo "Skipping $file"
        elif [[ "${will_overwrite}" = "x" ]]; then
          echo "kthxbai"
          exit 0
        else
          echo "I don't know what to do with '${will_overwrite}', so I'm not going to overwrite $file"
        fi
      else
        bootstrapCopy $file $destination
      fi
  done
}

validateArguments() {
  if [ -z "$1" ]; then
    err "Invalid Argument
      Please supply a relative source destination.
      Example: 'sh ./bootstrap.sh ../source-project'"
    exit 1
  fi
}

main() {
    local source_directory=$1
    validateArguments $source_directory
    copyWithOvewritePrompt $source_directory "${FILES_TO_COPY[@]}"
    echo "All done here."
}

main $@
