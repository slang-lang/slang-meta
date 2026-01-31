#!/bin/bash

source config

VERBOSE="${1}"

echo "Preparing Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Preparing $(pwd)..."

        mkdir -p build

        pushd build 1>/dev/null

            cmake -DSLANG_WORKSPACE_ROOT=${BASEPATH} -DBUILD=Release ../src

        popd 1>/dev/null

    popd 1>/dev/null
done
