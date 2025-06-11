#!/bin/bash

source config

declare -a EXECUTABLES=( "slang" "slang-dbg" "slang-pkg" )
VERBOSE="${1}"

echo "Installing Slang..."

# create backup of old binaries
for file in ${EXECUTABLES[@]}; do
	VERSION=$(${TARGET_DIRECTORY}/${file} --version | sed -n 's/.* \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p')

	sudo mv "${TARGET_DIRECTORY}/${file}" "${TARGET_DIRECTORY}/${file}_${VERSION}"
done

# deploy binaries
sudo cp ${BASEPATH}/slang/build/bin/slang*/*       /usr/bin/

# user scripts
sudo cp ${BASEPATH}/slang/src/Bundle/bin/*         /usr/bin/

# library scripts
sudo cp -r ${BASEPATH}/slang/src/Bundle/scripts/*  /var/lib/slang/scripts/

# man pages
#sudo cp ${BASEPATH}/slang/src/Bundle/man/*         /usr/share/man/man1/

# configuration
#sudo cp ${BASEPATH}/slang/src/Bundle/share/*       /usr/share/

