FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# Change ownership of folder to give container write access (-R is recursive for all folders)
# www-data is default user created by image and you give it access to the workdir
RUN chown -R www-data:www-data / var/www/html