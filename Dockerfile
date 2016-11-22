FROM node:6.9.1

MAINTAINER Aleksandr Krutikov <aleksandr.krutikov@csssr.com>

ADD . /swagger-ui

EXPOSE 8080

WORKDIR /swagger-ui

RUN npm install -g gulp
RUN npm config set unsafe-perm true
RUN npm install

CMD ["gulp", "serve"]
