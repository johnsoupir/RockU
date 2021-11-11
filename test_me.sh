#!/bin/bash

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
echo "IN THE IF"
echo "$CHARACTERS"
echo "No Song detected, selecting from Playlist!"
#SONG=$(cat playlist.txt | sort -R | head -1)
#yt /\'$(cat playlist.txt | sort -R | head -1)\',1,q
else

	echo "You added a song!!!"

echo "Playing $(cat list.txt | tail -1)"
echo "Playing $(cat list.txt | tail -1)"
cat list.txt | tail -1 >> log.txt
#yt /\' $(tail -1 list.txt) \',1,q
cat list.txt | sed -e  '$d' > blah.txt
cat blah.txt > list.txt
fi
done
