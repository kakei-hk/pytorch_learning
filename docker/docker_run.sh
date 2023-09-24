#!/bin/bash

docker_image_name="pytorch_learning"
docker_container_name="pytorch_learning"
workdir="/workspace"

docker run --rm \
    --name ${docker_container_name} \
    --gpus all \
    -v ${PWD}:${workdir} \
    -it ${docker_image_name} \
    /bin/bash
