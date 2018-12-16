#  <font color='red'>Installation</font>
This procedure is based on *nix system

1. Install on of the latest stable version of [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
2. Install [Docker Compose](https://docs.docker.com/compose/install/#install-compose)

3. (Optional) Copy Starter Kit files in existing repository
    - `docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/alessandromr/docker-laravel-starter-kit/ ./tmp123`
    - `rm ./tmp123/README.md`
    - `mv ./tmp123/* ./`
    - `mv ./tmp123/.* ./`
    - `rm - R tmp123`

4. Build Images
    - `docker-compose build`
5. Download Laravel:
    - `docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/laravel/laravel/ ./source`
6. Start Containers
    - `docker-compose up -d`
7. Install Laravel
    - `docker-compose exec app composer install`
8. Run NPM Install
    - `docker run -ti --rm  -v $(pwd)/source:/current -w /current node:latest npm install`
9. Restart docker-compose
    - `docker-compose restart`


-----------

### Useful Commands
`docker-compose exec [container] [command]` can be used to run commands inside the selected container