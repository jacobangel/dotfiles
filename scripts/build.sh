#!/usr/bin/env bash
#
# Run the dot files

set -e

if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

cd "$(dirname $)"/..

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done