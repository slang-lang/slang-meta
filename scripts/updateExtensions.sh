#!/bin/bash

source config

VERBOSE="${1}"

echo "Building newest Slang-Extensions release:"

sudo rm /usr/local/share/slang/libs/*

echo "extBase64..."
cd ${BASEPATH}/extensions/extBase64/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extBase64/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extBase64/build/lib/* /usr/local/share/slang/libs

echo "extCurl..."
cd ${BASEPATH}/extensions/extCurl/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extCurl/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extCurl/build/lib/* /usr/local/share/slang/libs

echo "extJson..."
cd ${BASEPATH}/extensions/extJson/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extJson/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extJson/build/lib/* /usr/local/share/slang/libs

echo "extMariaDB..."
cd ${BASEPATH}/extensions/extMariaDB/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extMariaDB/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extMariaDB/build/lib/* /usr/local/share/slang/libs

#echo "extMySQL..."
#cd ${BASEPATH}/extensions/extMySQL/src
#git pull 1>/dev/null 2>&1
#cd ${BASEPATH}/extensions/extMySQL/build
#make all 1>/dev/null 2>&1
#sudo cp ${BASEPATH}/extensions/extMySQL/build/lib/* /usr/local/share/slang/libs

echo "extSlang..."
rm ${BASEPATH}/extensions/extSlang/build/lib/*
cd ${BASEPATH}/extensions/extSlang/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extSlang/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extSlang/build/lib/* /usr/local/share/slang/libs

echo "extSQLite3..."
cd ${BASEPATH}/extensions/extSQLite3/src
git pull 1>/dev/null 2>&1
cd ${BASEPATH}/extensions/extSQLite3/build
make all 1>/dev/null 2>&1
sudo cp ${BASEPATH}/extensions/extSQLite3/build/lib/* /usr/local/share/slang/libs
