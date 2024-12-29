#!/bin/bash

source config

VERBOSE="${1}"

echo "Compiling Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Compiling $(pwd)..."

        pushd build 1>/dev/null

            #if [ "${VERBOSE}" == "-v" ]; then
               make all
            #else
            #   make all 1>/dev/null 2>&1
            #fi

        popd 1>/dev/null

    popd 1>/dev/null
done
