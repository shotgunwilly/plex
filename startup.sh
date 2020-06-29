#!/bin/bash

# Mount USB drive. Run lsblk if mount not found.
sudo mount -t ext4 /dev/sdb2 /media/plex

# Create and run Plex container. Do 'sudo docker ps -a' to find zombies.
sudo docker run \
  -d \
  --name plex \
  --network=host \
  --restart=on-failure:3 \
  -e TZ="America/Phoenix" \
  -e PLEX_CLAIM="claim-UhuQGuYwRtC1oYi-sftz" \
  -v /media/plex/config:/config \
  -v /media/plex/transcode:/transcode \
  -v /media/plex/video/plex:/data \
  plexinc/pms-docker:1.19.4.2935-79e214ead
