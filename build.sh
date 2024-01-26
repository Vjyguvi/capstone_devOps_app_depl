# /bin/bash

image_name="proj"

sudo docker build -t $image_name .


if sudo docker images | grep -q $image_name; then
    echo "project created"
else
    echo "image not created"
fi
