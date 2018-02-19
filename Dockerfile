FROM node:9.2.1
RUN npm install --global nodemon
RUN mkdir -p /usr/app/src
WORKDIR /usr/app
COPY ./package.json .
RUN npm install
VOLUME ["/usr/app/src"]
EXPOSE 3000
EXPOSE 5432