FROM php:7.4-fpm-alpine

RUN apk update && apk add bash

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev postgresql-client
RUN docker-php-ext-install pdo pdo_pgsql
RUN wget https://getcomposer.org/download/1.10.7/composer.phar && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer
