ARG NODE_VERSION

FROM node:$NODE_VERSION

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install apt-utils
RUN apt-get -y install rsync yarn python-dev python-pip
RUN yarn global add typings@2.x
RUN pip install awscli
RUN echo "node version: $(node --version)"
RUN echo "aws version: $(aws --version)"
