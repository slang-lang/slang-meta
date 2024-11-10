#!/bin/bash

source config

declare -a EXECUTABLES=( "slang" "slang-dbg" "slang-pkg" )
VERBOSE="${1}"

echo "Building newest Slang release..."

# update code
cd ${BASEPATH}/slang/src
if [ "${VERBOSE}" == "-v" ]; then
	git pull 2>&1
else
    git pull 1>/dev/null 2>&1
fi

# rebuild slang binaries
cd ${BASEPATH}/slang/build
if [ "${VERBOSE}" == "-v" ]; then
	make all 2>&1
else
    make all 1>/dev/null 2>&1
fi

# create backup of olf binaries
for file in ${EXECUTABLES[@]}; do
	VERSION=`${TARGET_DIRECTORY}/${file} --version | sed -n 's/.* \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p'`

	sudo mv "${TARGET_DIRECTORY}/${file}" "${TARGET_DIRECTORY}/${file}_${VERSION}"
done

# deploy binaries
sudo cp ${BASEPATH}/slang/build/bin/slang*/* /usr/local/bin
