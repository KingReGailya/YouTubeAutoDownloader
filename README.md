I made this just to practice dockerfile 
that and to move away from youtube music
i dont really have a support plan so it would be 
best to build so a nightly build yourself but whatever

how it works?

it uses Y-DLP to download playlists from youtube 
and put them your spefficed file within /YT-downloads
Playlist.sh is what you edit inorder to tell it to download stuff
the docution on how to use is commented in there

How to use it?

run the command 

docker build -t dlp .

followed by 

docker run --name youtube-dlp -v download:/YT-downloads youtube-dlp