FROM ubuntu

RUN apt update

#copy the script for downloading 
COPY Playlist.sh Playlist.sh
#makes script runable
RUN chmod u+x Playlist.sh

#install dependises 
RUN apt -y install curl
RUN apt -y install python3
RUN apt -y install ffmpeg
RUN apt -y install cron
#installs YT-DLP
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp

#####################################################################


# Copy Cron file to the cron.d directory
COPY Cron /etc/cron.d/Cron
 
#lets cron run script
RUN chmod 0744 /Playlist.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/Cron

# Apply cron job
RUN crontab /etc/cron.d/Cron
 
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
 
# Run the command on container startup
CMD cron && tail -f /var/log/cron.log


#####################################################################

#Volume to keep downloads
#VOLUME /YT-downloads

#makes script run on cronjob

#run command  docker run --name youtube-dlp -v download:/YT-downloads dlp