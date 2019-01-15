
#  <font color='red'>Requirements</font>
1. Stable version of [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
2. Compatible version of [Docker Compose](https://docs.docker.com/compose/install/#install-compose)

----------

#  <font color='red'>Installation</font>
##### This procedure is for *nix system


1. Install Laravel on containers:
    - `./getLaravel.sh`

1. Install NPM support for Laravel on containers:
    - `./npmSupport.sh`

3. Generate the application key
    - Write your key inside the ./source/.env file on `APP_KEY` var
    - Use artisan to generate the key
        `docker-compose exec app php artisan key:generate`

Now you can start coding.


## Lumen

1. Install Lumen on containers:
    - `./getLumen.sh`


------------

#  <font color='red'>What includes?</font>

1. Laravel (PHP-FPM 7.3 + NGINX Stable)
2. Mysql 5.7
3. Npm (Node LTS, Stretch Slim)
    This container will allow you to compile saas and js with Laravel mix
4. Phpmyadmin Stable

#### Activable containers
1. Redis 5-stable
2. Elasticsearch 5.x
3. MongoDB 4-xenial


-----------

### Useful Commands
- Run a command inside a container:
    - `docker-compose exec [container] [command]`

##### Basic Docker Compose Commands
- Build all containers
    - `docker-compose build`
- Start all containers
    - `docker-compose up -d`
- Stop all containers
    - `docker-compose stop`
- Restart all containers
    - `docker-compose restart`

##### PHP Composer commands
- Run composer update
    - `docker-compose exec app composer update`
- Run composer install
    - `docker-compose exec app composer install`
