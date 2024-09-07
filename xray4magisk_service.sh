#!/system/bin/sh

(
    until [ ! -n "`ps -ef |grep -v grep|grep juicity-client|awk '{print $2}'`" ]; do
        sleep 5
    done
    /data/adb/xray/scripts/start.sh
) &
