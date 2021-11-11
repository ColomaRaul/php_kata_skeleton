FROM php:7.4

MAINTAINER Raúl Coloma Bonifacio <rau17cb@gmail.com>

RUN apt-get update && \
    apt-get install git unzip -y
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN pecl install xdebug && docker-php-ext-enable xdebug

VOLUME ["/var/www"]

WORKDIR /var/www