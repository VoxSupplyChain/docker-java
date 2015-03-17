FROM gliderlabs/alpine
MAINTAINER Todor Todorov <todor@peychev.com>

RUN  apk add --update openjdk7-jre-base \
	&& rm -rf /var/cache/apk/*
