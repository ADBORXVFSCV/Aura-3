#!/bin/bash
export RISH_APPLICATION_ID="com.termux"
# --- COORDINATES ---
# Update these if your screen resolution requires it
kx=355
ky=1080

px=355
py=1407
SEARCH_X=198
SEARCH_Y=198
CHAT_X=210
CHAT_Y=285
MSG_BOX_X=400
MSG_BOX_Y=2200
SEND_X=670
SEND_Y=1513

# --- CONFIG ---
PKG="com.whatsapp.w4b"
NAME="samanthi"
MESSAGE="Automated_System_Active"

# --- SMART EXECUTION ---
# Using the native 'rish' Shizuku wrapper. 
# This bypasses ADB ports entirely and hooks straight into the service.


echo "[*] Launching $PKG..."
adb shell am start -n com.whatsapp.w4b/com.whatsapp.Main
sleep 3
adb shell input tap $px $py
sleep 0.5
adb shell input tap $kx $ky
adb shell input tap $kx $ky
adb shell input tap $kx $ky
adb shell input tap $kx $ky
sleep 3

echo "[*] Locating Chat: $NAME..."
adb shell input tap $SEARCH_X $SEARCH_Y
sleep 0.5
adb shell input text $NAME
sleep 2

echo "[*] Opening Chat..."
adb shell input tap $CHAT_X $CHAT_Y
sleep 1


echo "[+] Success: Task Execution Complete."

