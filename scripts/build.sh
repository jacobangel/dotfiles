#!/usr/bin/env bash
#
# Run the dot files

set -e

if test ! "$(which brew)"
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://brew.sh"
  exit
fi

cd "$(dirname $0)"/..

# find the installers and run them iteratively
find . -maxdepth 2 -name install.sh | while read installer ; do
  echo "Running ${installer}..."
  sh -c "${installer}"
done

if [ ! -e ~/.gitignore_global ]; then touch ~/.gitignore_global; fi

find . -maxdepth 2 -name gitignore.txt | while read ignore ; do cat "${ignore}" > .gitignore_global ; done
