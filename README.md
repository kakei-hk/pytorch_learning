# Pytorch Learning


## Overview

This is a project for learning Pytorch.

## Tested Environment
This project has been tested in the following environments.
Note that the operation is not tested in an environment without GPU.

- Windows + WSL2 (Ubuntu 20.04)

## Preparation for a Docker Image
Execute the following command to build an image.
```
$ ./docker/docker_build.sh
```
If you are a VScode user, you can use devcontainer using the built image.
Select "Dev Containers: Rebuild and Reopen Container" to build an image and
launch a container.


## How to Use
1. Launch a container with the following command.
If you want to use devcontainer, select "Dev Containers: Reopen in Container"
to launch a container.
```
$ ./docker/docker_run.sh
```
2. 