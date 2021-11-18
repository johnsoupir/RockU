#!/bin/bash

#code for playing youtube videos
#created by John Soupier and Pierre Miller

LINES=$(cat list.txt | wc -l)
OLDLINES=$(cat list.txt | wc -l)


echo "There were $LINES and $OLDLINES"





while [  1  ]; do



sleep 5

LINES=$(cat list.txt | wc -l)
CHARACTERS=$(cat list.txt | wc -c)
echo "loop"
echo $LINES $OLDLINES



if [[ $CHARACTERS -lt 3 ]]; then
#if there are less then 3 characters in list.txt then play the premade playlist instead of list.txt
echo "No Song detected, selecting from Playlist!"
yt /\'$(cat playlist.txt | sort -R | head -1)\',1,q, -d short medium
else
#If there is something in list.txt, search and play that instead
	echo "You added a song!!!"

<<<<<<< HEAD
echo "Playing $(cat list.txt | head -1)"
NEXTSONG=$(cat list.txt | head -1)
cat list.txt | sed -e  '1d' > blah.txt
=======
echo "Playing $(cat list.txt | tail -1)"
echo "Playing $(cat list.txt | tail -1)"
cat list.txt | tail -1 >> log.txt
#yt /\' $(tail -1 list.txt) \',1,q
cat list.txt | sed -e  '$d' > blah.txt
>>>>>>> 04d0082659836e066315f6482d2accdee7db7ebf
cat blah.txt > list.txt
#clear the last result from list.txt and update the que.

yt /\' $NEXTSONG \',1,q
fi
done
