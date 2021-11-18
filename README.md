# RockU

Work in progress...

How To Run RockU:

launch flashblog.py with the command:
python3 flashblog.py
This makes the website active.
Then, to request songs, open the website
by opening an internet tab and searching:
http://127.0.0.1:5000/
This will bring you to the home page of RockU.
Before requesting a song, start the program test_me.sh
by using the command:
./test_me.sh
This command starts searching list.txt for requests
from the website, as well as starting the Yewtube program
test_me.sh also will detect if list.txt is empty, and play
from a premade playlist instead if this is the case.

Further work on the asthetics of the website, as well
as minor adaptations to the code are still needed

Potential additions to the website:

Accounts.
An about page explaining the creation process as well as hidden tricks


Remaining issues left to resolve:

Code is currently limited to 100 requests per day.
If a new song is requested during the song that is 
currently playing, the new song will be removed from
list.txt instead of the song that is currently playing.
Also, a filter is necessary for this program to work in
an effective respectful way.


Resolved Issues:

New Requests being deleted:

The new request being deleted has been repaired by fixing the
code to play the top request, which would be the oldest
request, instead of the bottom, or newest request.  By
playing and removing the top request, the bottom of the list is free
to update with new requests during the playing of the current
song without being deleted or altered.

Filter:

by using the grep command we can create a filter for this program.
the command used for the filter is 
grep -Ff filter.txt list.txt >> deny.txt
F interprets what is said as a string instead of a regular expression
f obtains patterns from the files instead of the command line.
after these specifications we list the files we wish to compare, and 
push the output to a new file.  The next step is to make it so that the 
items that match with names in the filter.txt file are removed from list.txt.


