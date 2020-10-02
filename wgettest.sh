#!/bin/sh
AMOUNT=50
START=$(date +%s.%N)
wget -q -O /dev/null http://ipv4.download.thinkbroadband.com/50MB.zip
END=$(date +%s.%N)
DURATION=$(awk "BEGIN {print $END - $START}")
RESULT=$(awk "BEGIN {print $AMOUNT/$DURATION}")
echo $AMOUNT "MB in " $DURATION " seconds."
echo "That's " $RESULT "MB/s."
