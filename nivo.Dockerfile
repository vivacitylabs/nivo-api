# syntax = docker/dockerfile:1.0-experimental
ARG NODE_VERSION=12.16.0

FROM node:${NODE_VERSION}

RUN mkdir -p /usr/src/nivo-api

WORKDIR /usr/src/nivo-api

COPY . .

RUN yarn install --frozen-lockfile --production

ENTRYPOINT ["yarn",  "start"]
