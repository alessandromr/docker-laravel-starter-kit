
#  <font color='red'>Requirements</font>
1. Stable version of [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
2. Compatible version of [Docker Compose](https://docs.docker.com/compose/install/#install-compose)


#  <font color='red'>Installation</font>
##### This procedure is for *nix system

1. Clone Starter Kit or downloads Starter Kit in existing repo
    #### Download file in existing repo
    ```bash
    docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/alessandromr/docker-laravel-starter-kit/ ./tmp123
    rm ./tmp123/README.md
    mv ./tmp123/* ./
    mv ./tmp123/.* ./
    rm - R tmp123
    ```

2. Download Laravel:
    - `docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/laravel/laravel/ ./source`
    - `rm -R ./source/.git`

3. Build Images
    - `docker-compose build`

4. Start Containers
    - `docker-compose up -d`

5. Run Composer Install
    - `docker-compose exec app composer install`
    
6. Run NPM Install
    - `docker run -ti --rm  -v $(pwd)/source:/current -w /current node:latest npm install`

7. Restart docker-compose
    - `docker-compose restart`


-----------

### Useful Commands
`docker-compose exec [container] [command]` can be used to run commands inside the selected container