strTitle=$(mocp -i 2> /dev/null | grep "SongTitle")
strArtist=$(mocp -i 2> /dev/null | grep "Artist")
echo [${strArtist:8} - ${strTitle:11}]
