FROM node:lts-stretch-slim
MAINTAINER Alessandro Marino https://github.com/alessandromr

WORKDIR /home/node/app

ENV NODE_ENV=development

CMD [ "npm", "run", "watch-poll"]