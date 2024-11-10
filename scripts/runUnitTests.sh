#!/bin/bash

source config

VERBOSE="${1}"

# execute unit tests
echo "Running unit tests:"
cd ${BASEPATH}

if [ "${VERBOSE}" == "-v" ]; then
	slang/build/bin/TestSuite/TestSuite -q 2>unit_tests.log
else
	slang/build/bin/TestSuite/TestSuite -q 1>/dev/null 2>unit_tests.log
fi

cat unit_tests.log | grep "ERROR"
echo "Errors found:" `cat unit_tests.log | grep "ERROR" | wc -l`

cat unit_tests.log | grep "WARN"
echo "Warnings found:" `cat unit_tests.log | grep "WARN" | wc -l`

#cat unit_tests.log | grep "INFO"
echo "Infos found:" `cat unit_tests.log | grep "INFO" | wc -l`

