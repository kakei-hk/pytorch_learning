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

2. Install python packages with the following command.
   ```
   $ poetry install
   ```
   Python packages will be installed in <root_dir>/.venv/,
   so once you installed packages in the container, you don't need to install it again.

3. Launch poetry virtual environment with the following command.
    ```
    $ poetry shell
    ```
    If you want to debug with devcontainer, select "Python: Select Interpreter"
    and "Python xxxx ('.venv':Poetry)" from the command palette.