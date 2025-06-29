#!/bin/bash

source config

VERBOSE="${1}"

echo "Updating Slang docs:"

pushd src 1>/dev/null

    git fetch -p
    git switch main
    git pull

popd 1>/dev/null

