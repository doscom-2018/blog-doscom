FROM alpine:3.9
MAINTAINER Bagon <catzy.rais@gmail.com>

RUN apk update
RUN apk upgrade
RUN \
    apk add --no-cache \
    apache2-proxy \
    apache2-ssl \
    apache2-utils \
    curl \
    git \
    logrotate \
    openssl

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

WORKDIR /var/www/localhost/htdocs
COPY  ./www  /var/www/localhost/htdocs 

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
