
# Useful commands #

## Build image ##

docker build -t contact-ui .

## Run image ##

docker run -d --name app contact-ui

## List all containers (only IDs) ##

docker ps -aq

## List all containers ##

docker ps -a

## Stop all running containers ##

docker stop $(docker ps -aq)

## Remove all containers ##

docker rm $(docker ps -aq)

## Remove all images ##

docker rmi $(docker images -q)


## Run local version ## 
sudo docker run status-display:latest

## Run from private repo ##
docker run dockerregistry.local:5000/markmcgookin/status-display:latest

## Run using bash as entry point
docker run --entrypoint /bin/bash -it status-display

## List containers on private registry
curl -X GET http://dockerregistry.local:5000/v2/_catalog

## List tags for repo on private registry
curl -X GET http://dockerregistry.local:5000/v2/status-display/tags/list