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

    sudo apt-get install docker

You can check docker service status with

    sudo service docker status
    sudo service docker start

To issue more docker commands, you can either make sure $USER belongs to `docker` group, or sudo everytime:

    groups ${USER}
    sudo usermod -aG docker ${USER}
    su - ${USER}

To install compose, you can take it from apt-get as well, but the version will be most likely outdated. Instead, install it via curl as indicated on the official compose install page:

- <https://docs.docker.com/compose/install/>

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

### Running the containers

On the production box, create a .env file with the production credentials (you can use the .env.sample as base). Then, you can run the following `docker-compose` commands to start/stop the containers:

    docker-compose -f "docker-compose.PRD.yml" up -d --build
    docker-compose -f "docker-compose.PRD.yml" down

### Running multiple containers in parallel

Note that to share port 80 between multiple such containers (or other non-containerized services), you have to setup a reverse-proxy (I use nginx for this) to map each domain to the port served by its container. This container is using port 8080, and the nginx server block to be added to the host nginx can be found in `/proxy/lamp`. To use it (at least on my Ubuntu 18.04 setup):

    cp proxy/lamp /etc/nginx/sites-available
    ln -s /etc/nginx/sites-available/lamp /etc/nginx/sites-enabled
    nginx -t                    # check nginx config syntax is correct
    systemctl restart nginx     # restart nginx
