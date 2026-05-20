#!/bin/bash
export RISH_APPLICATION_ID="com.termux"

DUMP_FILE="~/aura-3/temp/window_dump.xml"

adb shell uiautomator dump "$DUMP_FILE"
adb shell cat "$DUMP_FILE"

