mount -a
docker pull dockerregistry.local:5000/markmcgookin/status-display:latest
docker run --name status-display --privileged -d --mount type=bind,src=/media/blackbox,target=/data dockerregistry.local:5000/markmcgookin/status-display:latest