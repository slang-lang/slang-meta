#!/bin/bash

source config

VERBOSE="${1}"

echo "Preparing Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Preparing $(pwd)..."

        pushd src 1>/dev/null

            if [ "${VERBOSE}" == "-v" ]; then
               git pull 2>&1
            else
               git pull 1>/dev/null 2>&1
            fi

        popd 1>/dev/null

        mkdir -p build
        pushd build 1>/dev/null

            cmake -DBUILD=Release ../src

	popd 1>/dev/null

        sudo cp build/lib/* /usr/local/share/slang/libs

    popd 1>/dev/null
done

