#!/bin/bash

set -euo pipefail

VERSION=0.1.0
EXTENSION=codesnippet
NAME="Swift3Snippets-${VERSION}"
DOWNLOAD_URI=https://github.com/Priyank2016/Swift3Snippets/archive/${VERSION}.tar.gz
DIR="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"

mkdir -p "${DIR}"
curl -L $DOWNLOAD_URI | tar xvz -C "${DIR}";cp -r "${DIR}/${NAME}/Snippets/" "${DIR}"

