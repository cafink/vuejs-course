FROM node:23-alpine

RUN apk update
RUN apk add bash

WORKDIR /home/node/app

COPY . .

RUN npm install

EXPOSE 3000
CMD ["sh", "-c", "npm run server & npm run dev"]