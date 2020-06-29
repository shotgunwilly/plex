# Start Plex Server

## Verify drive is available

Sometimes the USB RAID drive needs to be reset before being able to mount. Run the following command to list available mounts:

>$ lsblk

If the 3.7T drive is not `sdb`, then edit `startup.sh` the below startup script``, line 4, to reflect the correct device. If the 3.7T drive is not there, reset the drive.

## Run startup script

Run the startup script to mount the USB media drive and start Docker container.

>$ ./startup.sh

# Get latest Plex Docker image

Pull latest image from [Plex Docker Images](https://hub.docker.com/r/plexinc/pms-docker/tags)

Edit line 17 of `startup.sh` to specify new image
