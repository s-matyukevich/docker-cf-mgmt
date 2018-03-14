FROM python:3-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git 
ADD https://github.com/pivotalservices/cf-mgmt/releases/download/v0.0.85/cf-mgmt-linux /usr/bin/cf-mgmt
RUN chmod +x /usr/bin/cf-mgmt && cf-mgmt --version
RUN pip install pygithub
