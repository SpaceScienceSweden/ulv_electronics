#!/bin/bash
set -e
# Send ESC in case we're doing something
echo Sending ESC
/bin/echo -en \\x1b > /dev/ttyUSB0
sleep 0.1
/bin/echo -en \\x1b > /dev/ttyUSB0
sleep 0.1
# Tell application to enter bootloader
# Send twice, sometimes it borks
echo Sending S
echo "S" > /dev/ttyUSB0
sleep 0.25
echo "S" > /dev/ttyUSB0
sleep 0.25
echo "S" > /dev/ttyUSB0
sleep 0.25
echo "S" > /dev/ttyUSB0
sleep 0.25
echo "S" > /dev/ttyUSB0

