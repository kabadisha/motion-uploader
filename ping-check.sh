#!/bin/bash

echo $PATH
echo "Checking ping"

if ping -qc 10 edna >/dev/null; then
	echo "Charlie's Phone is at home. Stopping motion."
	/etc/init.d/motion stop
elif ping -qc 10 abi-phone >/dev/null; then
	echo "Abi's Phone is at home. Stopping motion."
	/etc/init.d/motion stop
else
	echo "Neither Abi or Charlie's Phone is at home. Starting motion."
	/etc/init.d/motion start
fi
