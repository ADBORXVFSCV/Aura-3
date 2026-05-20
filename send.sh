export RISH_APPLICATION_ID="com.termux"
MSG=$1
if [ -z "$MSG" ]; then
    echo "[-] Error:001"
    exit 1
fi
MSG_BOX_X=400
MSG_BOX_Y=2200
SEND_X=670
SEND_Y=1513

echo "[*] Targeted Chat is already scoped. Sending message..."


adb shell input tap $MSG_BOX_X $MSG_BOX_Y
sleep 0.5


adb shell input text "$MSG"
sleep 0.5

adb shell input tap $SEND_X $SEND_Y

echo "[+] Success:1111"
