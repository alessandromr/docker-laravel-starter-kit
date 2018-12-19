
docker run -ti --rm -v $(pwd)/source:/current -w /current node:latest npm install &&
docker-compose restart &&
echo "NPM Support Added to Laravel on containers" 