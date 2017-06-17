FROM node:6

MAINTAINER SoftInstigate <info@softinstigate.com>

RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get -y install apt-utils
RUN apt-get -y install rsync yarn
RUN yarn global add typings@2.x
