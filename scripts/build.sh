#!/usr/bin/env bash
#
# Run the dot files

set -e

cd "$(dirname $)"/..

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done
