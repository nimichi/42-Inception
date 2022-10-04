FROM alpine:3.15

RUN adduser -D -H -u 1000 -s /bin/bash www-data -G www-data

RUN apk update;
RUN	apk add php7 php7-fpm php7-phar php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-json php7-iconv php7-mbstring;

RUN mkdir /run/php

COPY ./conf/www.conf /etc/php7/php-fpm.d/
COPY ./tools/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

#create wp-config.php (alternate way exists in wp-cli with 'wp config create' requires 'apk add mariadb')
COPY ./conf/wp-config.php /var/www/html/wordpress/

ENTRYPOINT /usr/local/bin/docker-entrypoint.sh