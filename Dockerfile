FROM node:14-alpine as build

WORKDIR /

COPY ./package*.json ./

RUN yarn install

COPY / .

EXPOSE 3000

CMD ["npm", "start"]