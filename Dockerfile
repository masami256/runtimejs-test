FROM node:8

RUN mkdir /app

COPY index.js /app/index.js
COPY package.json /app/package.json

WORKDIR /app
RUN npm install

CMD node ./index.js