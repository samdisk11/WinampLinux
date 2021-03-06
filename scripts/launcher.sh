#!/usr/bin/env bash
if [ $# -ne 0 ];then
    echo "I have no parameters, just run the script without arguments"
    exit 1
fi

notify-send "Winamp 5.8" "Winamp is launching." -i "winampicon"

SCR_PATH="wapath"
CACHE_PATH="wacache"

RESOURCES_PATH="$SCR_PATH/resources"
WINE_PREFIX="$SCR_PATH/prefix"
 

export WINEPREFIX="$WINE_PREFIX"

WINEARCH=win32 wine "$SCR_PATH/prefix/drive_c/Program Files/Winamp/winamp.exe"
