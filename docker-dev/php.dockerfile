FROM php:7.3-fpm
MAINTAINER Alessandro Marino https://github.com/alessandromr

#Install system's dependencies and enable PHP modules 
RUN apt-get update && apt-get install -y \
      curl \
      libcurl4-gnutls-dev \
      libicu-dev \
      libzip-dev \
      git \
      zip \
      unzip \
      mysql-client \
      libjpeg-dev \ 
      libfreetype6-dev \ 
    && docker-php-ext-install \
      intl \
      mbstring \
      zip \
      opcache \
      pdo \
      pdo_mysql \
      mysqli \
      curl \
      iconv \
      json \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && apt-get purge -y --auto-remove $buildDeps \
    && rm -r /var/lib/apt/lists/*

RUN pecl install -o -f redis \
    && pecl install -o -f mongodb \
    && rm -rf /tmp/pear

WORKDIR /var/www

# Install Composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
