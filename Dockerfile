FROM php:8.2-cli

RUN apt-get update \
    && apt-get install -y git unzip libzip-dev \
    && docker-php-ext-install bcmath pdo_mysql zip \
    && rm -rf /var/lib/apt/lists/*