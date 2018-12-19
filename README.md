
#  <font color='red'>Requirements</font>
1. Stable version of [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
2. Compatible version of [Docker Compose](https://docs.docker.com/compose/install/#install-compose)

----------

## Use the starter kit in existing repository
```bash
docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/alessandromr/docker-laravel-starter-kit/ ./tmp123
rm ./tmp123/README.md
mv ./tmp123/* ./
mv ./tmp123/.* ./
rm -R tmp123
```


#  <font color='red'>Installation</font>
##### This procedure is for *nix system


1. Install Laravel on containers:
    - `./getLaravel.sh`

1. Install NPM support for Laravel on containers:
    - `./npmSupport.sh`

3. Generate the application key
    - Write your key inside the .env file on `APP_KEY`
    - Use artisan to generate the key
        `docker-compose exec app php artisan key:generate`


------------

#  <font color='red'>What includes?</font>

1. Laravel (PHP + NGINX)
2. Mysql
3. Npm (Node)
    This container will allow you to compile saas and js with Laravel mix
4. Phpmyadmin

#### Activable containers
1. Redis
2. Elasticsearch
3. MongoDB


-----------

### Useful Commands
`docker-compose exec [container] [command]` can be used to run commands inside the selected container