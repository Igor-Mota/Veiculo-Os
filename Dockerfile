FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www

COPY . .

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer install

EXPOSE 9000

CMD ["php-fpm"]
