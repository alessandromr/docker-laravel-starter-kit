FROM node:latest

WORKDIR /home/node/app
ADD ./source ./

ENV NODE_ENV=development

CMD [ "npm", "run", "watch-poll"]