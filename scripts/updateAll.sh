#!/bin/bash

source config

# update, build and deploy Slang binaries
${BASEPATH}/updateSlang.sh

# update, build and deploy extensions
${BASEPATH}/updateExtensions.sh

# execute unit tests
${BASEPATH}/runUnitTests.sh

echo "Done."

