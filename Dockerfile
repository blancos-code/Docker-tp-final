FROM php:8.3.2-fpm-alpine

WORKDIR /var/www/html

RUN apk update \
 && apk add --no-cache \
    bash

RUN docker-php-ext-install pdo_mysql mysqli


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer /
    && curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash /
    && apk add symfony-cli

COPY . .

RUN composer install --no-scripts --no-autoloader /
    && composer dump-autoload --optimize

EXPOSE 8000

CMD ["symfony", "server:start", "--port=8000", "--no-tls"]
