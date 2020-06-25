# LAMP

Let's deploy a LAMP stack inside docker containers:

- a container with php-apache
- a container with mysql
- a container with php-myadmin for administration purposes

The target is to plug this stack to external bind mounts to run multiple virtual hosts:

- www.dagobah-online.com
- heroes.dagobah-online.com
- euro2008, worldcup2010, euro2012

## Development environment - Windows

Installation:

- Install Docker Desktop (requires Windows 10 Home v2004 - May 2020 update)
  - <https://docs.docker.com/docker-for-windows/install-windows-home/>
- Install Docker extension in VSCode

Then you just have to right in VSCode on your docker-compose.yml file to compose up/down. And you can follow everything in the Docker Desktop dashboard.

Note on storage space: Docker Desktop will store its container images inside a wsl distro called docker-desktop-data, which is by default stored in AppData/Local on your C: drive. Since this may take quite some space, you may want to move it to another drive, here is how to do that:

    wsl -l -v #list the wsl distros on your system
    wsl --shutdown
    wsl --export docker-desktop docker-desktop.tar
    wsl --unregister docker-desktop
    wsl --import docker-desktop X:\wslStore\ docker-desktop.tar --version 2

Do it with `docker-desktop-data` as well, as it can take even more space.

## Development environment - Linux (Ubuntu 18.04)

Installation:

    sudo apt-get install docker docker-compose

You can check docker service status with

    sudo service docker status
    sudo service docker start

To issue more docker commands, you can either make sure $USER belongs to `docker` group, or sudo everytime:

    groups ${USER}
    sudo usermod -aG docker ${USER}
    su - ${USER}

Reference:

- <https://www.bountysource.com/issues/39603144-error-couldn-t-connect-to-docker-daemon-at-http-docker-localunixsocket-is-it-running>

Once you get everything setup, it is simple to start/stop the LAMP stack:

    docker-compose up -d
    docker-compose up -d --build
    docker ps
    docker-compose down

or even explore the filesystem inside a docker image:

    docker build /docker/php
    docker run -it ${IMAGE_NAME} sh

## References of Docker images used

Supported versions, environment variables or additional options can be found there:

- PHP: <https://hub.docker.com/_/php>
- MySQL: <https://hub.docker.com/_/mysql>
- PHPMyAdmin: <https://hub.docker.com/r/phpmyadmin/phpmyadmin/>

docker-compose documentation is also a good reference: <https://docs.docker.com/compose/gettingstarted/>

## Production box

### ssh keys setup

- <https://stackoverflow.com/questions/6377009/adding-a-public-key-to-ssh-authorized-keys-does-not-log-me-in-automatically/24724558#24724558>
