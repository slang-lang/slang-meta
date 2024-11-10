#!/bin/bash

source config

VERBOSE="${1}"

echo "Building Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Building $(pwd)..."

        mkdir -p build

        pushd build 1>/dev/null

            if [ "${VERBOSE}" == "-v" ]; then
               make all
            else
               make all 1>/dev/null 2>&1
            fi

        popd 1>/dev/null

        sudo cp build/lib/* /usr/local/share/slang/libs

    popd 1>/dev/null
done
