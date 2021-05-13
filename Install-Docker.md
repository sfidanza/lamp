# How to install Docker

To get started on Docker, here is how to install it on Windows and Ubuntu, with some extra tips aftre install.

## Install on Windows

First, install Docker Desktop: <https://docs.docker.com/docker-for-windows/install-windows-home/>.

From the Docker Desktop dashboard, you can see containers and images, access open ports and logs, or shell into running containers. You can also access all this from VSCode directly, through its Docker extension.

Note on storage space: Docker Desktop will store its container images inside a wsl distro called docker-desktop-data, which is by default stored in `AppData/Local` on your C: drive. Since this may take quite some space, you may want to move it to another drive, here is how to do that from a terminal window:

    wsl -l -v #list the wsl distros on your system
    wsl --shutdown
    wsl --export docker-desktop docker-desktop.tar
    wsl --unregister docker-desktop
    wsl --import docker-desktop X:\wslStore\ docker-desktop.tar --version 2

Do it with `docker-desktop-data` as well, as it can take even more space.

## Install on Ubuntu (18.04)

Installation:

    sudo apt install docker

You can check docker service status with

    sudo service docker status
    sudo service docker start

To issue more docker commands and avoid to `sudo` every time, you can set $USER to belong to the `docker` group:

    groups ${USER}
    sudo usermod -aG docker ${USER}
    su - ${USER}

To install compose, you can install it with `apt` as well, but the version will most likely be outdated. Instead, install it via curl as indicated on the official compose install page:

- <https://docs.docker.com/compose/install/>

Once you get everything setup, here are some sample `docker` commands to start/stop apps:

    docker-compose up -d
    docker-compose up -d --build
    docker ps
    docker-compose down

or explore the filesystem inside a docker image:

    docker build /docker/php
    docker run -it ${IMAGE_NAME} sh

## Useful references

- <https://docs.docker.com/compose/gettingstarted/>
