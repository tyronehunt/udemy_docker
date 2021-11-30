# Creates snapshot of image when deploying (and bind mounts in docker-compose no longer relevant)
FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf 

WORKDIR /var/www/html

COPY src .