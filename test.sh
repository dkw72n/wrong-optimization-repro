#!/bin/bash
set -e

TEST_PATH=/data/local/tmp/isthumb

$NDK/ndk-build -B -j8
adb shell rm -rf $TEST_PATH
adb shell mkdir -p $TEST_PATH
adb push libs/armeabi-v7a/* $TEST_PATH
adb shell "chmod +x ${TEST_PATH}/*"
adb shell "chmod +x ${TEST_PATH}/isthumb_o0"
adb shell "chmod +x ${TEST_PATH}/isthumb_o2"
adb shell "${TEST_PATH}/isthumb_o0"
adb shell "${TEST_PATH}/isthumb_o2"