#Getting started

1) Install Raspbian on a RPI 
2) Create a line in /etc/fstab like this to mount a drive from another pi (called blackbox.local) sharing a folder called share:
//blackbox.local/share /media/blackbox cifs guest 0 0

3) In this file the other pi should be updating a file called info.dat that looks like this:
192.168.0.49	0.66%	231/3906MB 5.91%	5/15GB 43%	06-08-2019	10:51:26

This is updated constantly with info about the running pi.

4) Install docker on the pi attached to the display
https://markmcgookin.com/2019/08/04/how-to-install-docker-on-a-raspberry-pi-zero-w-running-raspbian-buster/

5) Copy the install.sh and start.sh files to the pi attached to the display

6) Run install.sh
This will pull the correct docker container from the internal registry
This will run that container while mounting the /media/blackbox drive as a folder within the container (so your conainer can now read the info.dat file)

7) Going forward just run the start.sh file to just start that one container and mount the drive in FSTAB