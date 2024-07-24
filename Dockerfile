# Dockerfile for lighttpd

FROM alpine:3.20.2

ENV LIGHTTPD_VERSION=1.4.76-r0

RUN apk update \
  && apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} lighttpd-mod_auth \
  && rm -rf /var/cache/apk/*

COPY etc/lighttpd/* /etc/lighttpd/
COPY start.sh /usr/local/bin/

EXPOSE 80

RUN echo "echo "Hello World" >> index.html"
VOLUME /var/www/localhost/htdocs

CMD ["start.sh"]
