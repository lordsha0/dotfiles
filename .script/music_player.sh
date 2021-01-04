strTitle=$(mocp -i 2> /dev/null | grep "SongTitle")
strArtist=$(mocp -i 2> /dev/null | grep "Artist")
strState=$(mocp -i 2> /dev/null | grep "State")
if [ ${strState:7} = "PLAY" ]
then
    echo Playing: ${strArtist:8} - ${strTitle:11}
fi
if [ ${strState:7} = "PAUSE" ]
then
    echo Paused: ${strArtist:8} - ${strTitle:11}
fi
