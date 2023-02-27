FROM node:18.14.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY /back/package*.json ./

RUN npm install

COPY ./back .

EXPOSE 8080

CMD ["node", "index.js"]