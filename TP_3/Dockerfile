FROM node:20-alpine3.18

WORKDIR /app

COPY ./rhyme .

RUN npm ci
CMD ["node", "server.js"]

EXPOSE 3000