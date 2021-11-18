#!/bin/bash

grep -Ff filter.txt list.txt >> deny.txt
echo "Removing the following songs from the playlist"
cat deny.txt
sleep 3
rm deny.txt
sleep 1
grep -v -F -f filter.txt list.txt >> similar.txt

echo "Songs remaining:"
cat similar.txt
sleep 3 
cat similar.txt > list.txt
rm similar.txt
