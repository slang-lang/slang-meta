#!/bin/bash

source config

VERBOSE="${1}"

echo "Cleaning Slang extensions:"

for directory in */; do
    pushd "${directory}" 1>/dev/null || exit

        echo "Cleaning $(pwd)..."

        pushd build 1>/dev/null || exit

            make clean

        popd 1>/dev/null || exit

    popd 1>/dev/null || exit
done
