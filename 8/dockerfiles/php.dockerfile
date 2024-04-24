FROM php:7.4-fpm-alpine

# standard folder on web servers to serve
WORKDIR /var/www/html 

RUN docker-php-ext-install pdo pdo_mysql

