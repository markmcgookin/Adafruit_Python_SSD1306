
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

## Login to private repo ##

az acr login --name brightpay

## Run local version ## 
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" contact-ui:latest

#Need to add the container reg ot this 
#sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" contact-ui:latest

 -- Run using bash as entry point
docker run --entrypoint /bin/bash -it contact-ui

