#!/bin/bash

echo "" > filter.txt

cat offensive.txt >> filter.txt

cat badmusic.txt >> filter.txt

DATE=$(date +%j);
if [[ 5 -lt $DATE ]] && [[ $DATE -lt 320 ]] ; then
	cat christmas.txt >> filter.txt
else
	exit
fi
