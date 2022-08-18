FROM alpine:3.16

RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-client mariadb-common

COPY ./tools/setup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup.sh

ENTRYPOINT ./usr/local/bin/setup.sh
