#!/bin/bash

source config

VERBOSE="${1}"

echo "Cleaning Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Cleaning $(pwd)..."

        pushd build 1>/dev/null

            make clean

        popd 1>/dev/null

    popd 1>/dev/null
done
