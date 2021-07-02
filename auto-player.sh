#!/bin/bash

# set the sound file to be played
SOUND_FILE = ~/whitenoise.mp3

# other variables
TEMP_STORAGE=/tmp
LOG_FILE=~/sleepnoise.log
NOW=$(date "+%Y-%m-%d %H:%M:%S")

# log if mpg123 is not installed
command -v mpg123 >/dev/null 2>&1 || {
echo "$NOW - Initialization failed because mpg123 package is not installed." >> $LOG_FILE
exit 1; }

# log if amixer is not installed
command -v amixer >/dev/null 2>&1 || {
echo "$NOW - Initialization failed because alsa-utils package is not installed." >> $LOG_FILE
exit 1; }

# log if sound file is missing
[[ -f "$SOUND_FILE" ]] || {
echo "$NOW - Playback failed because noise file ($SOUND_FILE) not found."  >> $LOG_FILE
exit 1; }

# copy wav to tmpfs for 0 disk usage
[[ -f "$TEMP_STORAGE/${SOUND_FILE##*/}" ]] || cp "$SOUND_FILE" "$TEMP_STORAGE"

# play wite noise on infinite loop
echo "$NOW - Starting noise playback" >> $LOG_FILE
amixer cset numid=3 1 &>/dev/null
mpg123 --loop -1 --gapless --quiet "$TEMP_STORAGE/${SOUND_FILE##*/}" &>/dev/null &