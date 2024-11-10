#!/bin/bash

source config

VERBOSE="${1}"

echo "Updating Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Updating $(pwd)..."

        pushd src 1>/dev/null

            if [ "${VERBOSE}" == "-v" ]; then
               git pull
            else
               git pull 1>/dev/null 2>&1
            fi

        popd 1>/dev/null

    popd 1>/dev/null
done
