FROM node:18

WORKDIR /app

COPY ./* ./

RUN npm i -g yarn && yarn && yarn build

FROM httpd

WORKDIR /usr/local/apache2/htdocs/

COPY ./dist ./ 
