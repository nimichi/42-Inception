FROM alpine:3.15

RUN adduser -D -H -u 1000 -s /bin/bash www-data -G www-data

RUN apk update;
RUN	apk add curl php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-json;

RUN mkdir /run/php

RUN curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-6.0.1.tar.gz";
RUN mkdir -p /var/www/html/;
RUN	tar -xzf wordpress.tar.gz -C /var/www/html/;
RUN	rm wordpress.tar.gz;

COPY ./conf/wp-config.php /var/www/html/wordpress/
COPY ./conf/www.conf /etc/php7/php-fpm.d/

CMD php-fpm7 -F