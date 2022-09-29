FROM alpine:3.16

RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils

RUN mkdir /run/mysqld
RUN chown -R mysql:root /run/mysqld

COPY ./tools/docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ./usr/local/bin/docker-entrypoint.sh
