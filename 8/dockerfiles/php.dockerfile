FROM php:7.4-fpm-alpine

# standard folder on web servers to serve
WORKDIR /var/www/html 

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D larave

