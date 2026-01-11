#!/bin/env bash

echo "Preparing build directories..."

BASEPATH=$(pwd)

if [ -f "config" ]; then
    echo "Config OK"
else
    SHARE_DIRECTORY="/var/lib/slang"
    SHARE_EXTENSIONS_DIRECTORY="${SHARE_DIRECTORY}/extensions"
    SHARE_LIBRARY_DIRECTORY="${SHARE_DIRECTORY}/library"
    TARGET_DIRECTORY="/usr/bin"

    export BASEPATH
    export SHARE_DIRECTORY
    export SHARE_EXTENSIONS_DIRECTORY
    export SHARE_LIBRARY_DIRECTORY
    export TARGET_DIRECTORY

    envsubst < config.tmp > config
fi

