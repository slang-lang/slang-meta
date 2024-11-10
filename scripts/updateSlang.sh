#!/bin/bash

source config

echo "Building newest Slang release..."

# update code
cd ${BASEPATH}/slang/src
git pull 1>/dev/null 2>&1

# rebuild slang binaries
cd ${BASEPATH}/slang/build
make all 1>/dev/null 2>&1

# create backup of olf binaries
for f in /usr/local/bin/slang*; do
	VERSION=`${f} --version | sed -n 's/.* \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p'`

	sudo mv "${f}" "${f}_${VERSION}"
done

# deploy binaries
sudo cp ${BASEPATH}/slang/build/bin/slang*/* /usr/local/bin

