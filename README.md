I made this just to practice dockerfile while
that and to move away from youtube music
I dont really have a LTS plan so it would be 
best to build so a nightly build yourself but whatever

how it works?

it uses Y-DLP to download playlists from youtube 
and put them your spefficed file within 
/YT-downloader
Playlist.sh is what you edit in order to tell it to download stuff
the docution on how to use is commented in there

How to use it?

Your Build:

    Run

    docker build -t yt-dlp .

    Followed by
     
    docker run --name miku-dlp -v download:/YT-downloader yt-dlp

Docker-hub Build:

    Run

    Docker run --name miku-dlp -v download:/YT-downloader  kingregailya/ytm-dlp