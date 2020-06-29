# Start Plex Server

Run the startup script to mount the USB media drive and start Docker container.

>$ ./startup.sh

## Fix "`/dev/sdb2` does not exist" Error

Check system for available mounts 
>$ df

# Get latest Plex Docker image

Pull latest image from [Plex Docker Images](https://hub.docker.com/r/plexinc/pms-docker/tags)

Edit line 17 of `startup.sh` to specify new image
