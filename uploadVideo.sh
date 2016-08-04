#!/bin/bash

# Tell the script to fail if an attempt is made to use an un-set (null) variable.
# This helps prevent accidental breakages.
set -u

# Tell the script to exit if any statement returns a non-true return value.
# The benefit of using -e is that it prevents errors snowballing into serious
# issues when they could have been caught earlier.
set -e

FILE=$1
LOG_FILE=/tmp/video-uploader.log

echo "$(date '+%a %d %b %Y %X') - Uploading video file: $FILE" >> $LOG_FILE
/opt/motion-uploader/uploader.py /opt/motion-uploader/uploader.cfg "$FILE" >> $LOG_FILE 2>&1
echo "$(date '+%a %d %b %Y %X') - Upload of video file: $FILE completed" >> $LOG_FILE

if [ -f "$FILE" ]; then
	echo "$(date '+%a %d %b %Y %X') - Deleting uploaded file $FILE from local storage..." >> $LOG_FILE
	rm $FILE >> $LOG_FILE 2>&1
	echo "$(date '+%a %d %b %Y %X') - File $FILE successfully deleted." >> $LOG_FILE
else
	echo "$(date '+%a %d %b %Y %X') - File $FILE has already been deleted from local storage..." >> $LOG_FILE
fi
