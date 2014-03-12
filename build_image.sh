#!/bin/sh -e
#
# Helper script for building docker images

CONTAINER_PATH=${1%/}
DOCKERFILE=$CONTAINER_PATH/Dockerfile

print_usage() {
	echo "Usage: ./build_image.sh IMAGE_FOLDER"
}


if [ $# = 0 ]
then
	echo "No container folder provided."
	print_usage
elif [ -f $DOCKERFILE ];
then
	echo "Building image 'viliusl/$CONTAINER_PATH' from instructions in '`pwd`/$DOCKERFILE'"
	# add tmp to 
	ln -s `pwd`/tmp `pwd`/$CONTAINER_PATH/tmp
	sudo docker build -rm=true -t=viliusl/$CONTAINER_PATH $CONTAINER_PATH
else 
	echo "Could not find '$DOCKERFILE. Check folder name provided and existence of 'Dockerfile' there."
	print_usage
fi