#!/bin/bash

source config

# update, build and deploy Slang binaries
${BASEPATH}/scripts/updateSlang.sh ${*}

# update, build and deploy extensions
${BASEPATH}/scripts/updateExtensions.sh ${*}

# execute unit tests
${BASEPATH}/scripts/runUnitTests.sh ${*}

echo "Done."
