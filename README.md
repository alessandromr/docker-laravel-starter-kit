#  <font color='red'>Installation</font>

* Install on of the latest stable version of [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
* Install [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
* Build Images
    - `docker-compose build`
* Download Laravel:
    - `docker run -ti --rm -v ${HOME}:/root -v ${pwd}:/git alpine/git clone https://github.com/laravel/laravel/ ./source`
* Start Containers
    - `docker-compose up -d`
* Install Laravel
    - `docker-compose exec app composer install`
* Run NPM Install
    - `docker run -ti --rm  -v ${pwd}/source:/current -w /current node:latest npm install`
* Restart docker-compose
    - `docker-compose restart`


------------
`docker-compose exec [container] [command]` can be used to run commands inside the selected container