FROM alpine:3.16

RUN adduser -D -H -u 1000 -s /bin/bash www-data -G www-data

RUN apk update
RUN apk add nginx openssl

COPY conf/*.conf /etc/nginx/

COPY sslcert.crt /etc/ssl/
COPY sslcert.key /etc/ssl/

EXPOSE 443

ENTRYPOINT nginx -g 'daemon off;'