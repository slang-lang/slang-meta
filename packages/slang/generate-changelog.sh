#!/bin/bash

cd debian || exit

PACKAGE="slang"
VERSION="$(git describe --tags --abbrev=0)"
DIST="noble"
URGENCY="medium"
AUTHOR="$(git config user.name)"
EMAIL="$(git config user.email)"
DATE="$(date -R)"

{
echo "${PACKAGE} (${VERSION}) ${DIST}; urgency=${URGENCY}"
echo
git log --pretty="  * %s" $(git describe --tags --abbrev=0)..HEAD
echo
echo " -- ${AUTHOR} <${EMAIL}>  ${DATE}"
} > changelog

