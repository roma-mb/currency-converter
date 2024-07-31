FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    vim \
    build-essential \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    unzip \
    git \
    libzip-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev && \
    docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

RUN rm -rf /var/www/html

COPY . /var/www

COPY --chown=www-data:www-data . /var/www

EXPOSE 9000

CMD ["php-fpm"]
