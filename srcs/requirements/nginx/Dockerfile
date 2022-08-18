FROM alpine:3.16

RUN apk update
RUN apk add nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log

COPY conf/nginx.conf /etc/nginx/conf.d
COPY index.html /var/www/tutorial/intex.html

EXPOSE 443

ENTRYPOINT nginx -g "daemon off; error_log /dev/stderr debug;"