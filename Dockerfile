# https://github.com/nodejs/docker-node/blob/a3489450fcd506538ab84174ebedb3cc5c908bc7/7.2/alpine/Dockerfile
FROM node:alpine

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>


RUN apk add --update --no-cache \
            git \
            openjdk8-jre-base \
 && rm -rf /var/cache/apk/*


CMD ["node"]
