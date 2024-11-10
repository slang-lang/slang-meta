#!/bin/bash

source config

# update, build and deploy Slang binaries
pushd slang 1>/dev/null
    ./update.sh ${*}
popd 1>/dev/null

# update, build and deploy extensions
pushd extensions 1>/dev/null
    ./update.sh ${*}
popd 1>/dev/null

# execute unit tests
./runUnitTests.sh ${*}

echo "Done."
