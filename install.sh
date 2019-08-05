#Run this on the local machine to pull the latest version, run it, expose the folder for data and gpio pins

#Copy and run this command to run the container but attached
#docker run --name status-display --device /dev/gpiomem -it -v ~/data:/media/blackbox dockerregistry.local:5000/markmcgookin/status-display:latest

docker run --name status-display --device /dev/gpiomem -d -v ~/data:/media/blackbox dockerregistry.local:5000/markmcgookin/status-display:latest
