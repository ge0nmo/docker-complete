# create repository in docker hub

# build image on your local machine 
ex) docker build -t node-dep-example .

# push the image onto your public docker repository
ex) docker push ands0927/node-example-1

# pull and run the image on your host machine
ex) docker run -d -p 80:80 --rm ands0927/node-example-1


# to update your application to the latest version

# stop container on your host machine

# rebuild the latest image on your local machine

# push the latest image onto your public docker repository

$ if you just run the image again using the same command, the docker image will not be the updated version.

$ pull the image on your host machine
ex) docker pull ands0927/node-example-1

$ run the image with the same command
ex) docker run -d -p 80:80 --rm ands0927/node-example-1
