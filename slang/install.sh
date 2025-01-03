#!/bin/bash

source config

declare -a EXECUTABLES=( "slang" "slang-dbg" "slang-pkg" )
VERBOSE="${1}"

echo "Installing Slang..."

# create backup of old binaries
for file in ${EXECUTABLES[@]}; do
	VERSION=`${TARGET_DIRECTORY}/${file} --version | sed -n 's/.* \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p'`

	sudo mv "${TARGET_DIRECTORY}/${file}" "${TARGET_DIRECTORY}/${file}_${VERSION}"
done

# deploy binaries
sudo cp ${BASEPATH}/slang/build/bin/slang*/* /usr/local/bin

