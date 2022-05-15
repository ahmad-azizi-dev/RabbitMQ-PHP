FROM php:7.4

RUN apt-get update
RUN apt-get install zip -y
RUN docker-php-ext-install sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

