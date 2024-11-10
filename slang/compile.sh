#!/bin/bash

source config

VERBOSE="${1}"

echo "Compiling Slang..."

# rebuild slang binaries
pushd build 1>/dev/null

    if [ "${VERBOSE}" == "-v" ]; then
        make all 2>&1
    else
        make all 1>/dev/null 2>&1
    fi

popd 1>/dev/null

