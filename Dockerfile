# syntax=docker/dockerfile:1

FROM node:19-alpine
ENV USER_IDS 21486553-e978-41d6-b564-aae716722f35
ENV NODE_ENV production

RUN npm install -g pm2

ADD https://github.com/Wynd-Network/grass-vps.git /app

WORKDIR /app

RUN npm install

EXPOSE 8080

CMD ["pm2-runtime", "pm2.config.js"]
