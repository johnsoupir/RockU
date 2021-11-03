#!/bin/bash

LINES=$(cat list.txt | wc -l)
OLDLINES=$LINES


echo "There were $LINES and $OLDLINES"





while [  1  ]; do



sleep 5

LINES=$(cat list.txt | wc -l)
echo "loop"
echo $LINES $OLDLINES
if [[ "$LINES" > "$OLDLINES" ]]; then

echo "New lines!"
echo "Playing $(cat list.txt | tail -1)"
yt /\' $(tail -1 list.txt) \',1,q
OLDLINES=$(cat list.txt | wc -l)

fi

done

