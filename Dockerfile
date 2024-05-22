FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www



COPY . .

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer install

EXPOSE 8000

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
