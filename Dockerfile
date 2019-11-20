FROM node:12.10-alpine

WORKDIR /app

COPY package.json ./package.json

COPY package-lock.json ./package-lock.json

RUN npm install

COPY . ./

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start" ]