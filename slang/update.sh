#!/bin/bash

source config

VERBOSE="${1}"

echo "Updating Slang..."

# update code
pushd src 1>/dev/null
    if [ "${VERBOSE}" == "-v" ]; then
        git pull
    else
        git pull 1>/dev/null 2>&1
    fi
popd 1>/dev/null

