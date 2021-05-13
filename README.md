# LAMP

Let's deploy a LAMP stack inside docker containers:

- a container with php-apache
- a container with mysql
- a container with php-myadmin for administration purposes

The target is to plug this stack to external bind mounts to run multiple virtual hosts:

- www.dagobah-online.com
- heroes.dagobah-online.com
- euro2008, worldcup2010, euro2012

We will use Docker to run all this (you can follow the install guide inside [Install-Docker.md](Install-Docker.md)). The base images used here support different options that can be found there for reference:

- PHP: <https://hub.docker.com/_/php>
- MySQL: <https://hub.docker.com/_/mysql>
- PHPMyAdmin: <https://hub.docker.com/r/phpmyadmin/phpmyadmin/>

## Develoment setup

You need a `.env` file in the root folder to specify the secrets. You can simply copy `.env.sample` to get started.

### Run locally in production mode

Here are the commands to start/stop everything (with the containers built locally):

    docker-compose -f "docker-compose.yml" up -d --build
    docker-compose -f "docker-compose.yml" down

### Run locally in development mode

Running `docker-compose up` without specifying the file will automatically take the `docker-compose.override.yml` into account. The commands are thus even simpler:

    docker-compose up -d --build
    docker-compose down

Once containers are started, you can access:

- the application at <http://localhost:8080>
- a phpmyadmin interface at <http://localhost:8081>

## Production box

On the production box, create a .env file with the production credentials (you can use the .env.sample as base). Then, you can run the following `docker-compose` commands to start/stop the containers:

    docker-compose -f "docker-compose.yml" up -d --build
    docker-compose -f "docker-compose.yml" down
