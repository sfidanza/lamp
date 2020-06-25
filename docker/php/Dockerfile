FROM php:5.6-apache

RUN docker-php-ext-install mysql mysqli
# To be run if zip support is needed in php
#RUN set -eux; apt-get update; apt-get install -y libzip-dev zlib1g-dev; docker-php-ext-install zip
RUN a2enmod rewrite

COPY apache2-conf/sites-available/*.conf /etc/apache2/sites-available/
RUN a2ensite dagobah \
        naiad \
        euro2008 \
        euro2012 \
        worldcup2010 \
        heroes \
        heroes-modding-wiki \
        tools \
    && a2dissite *default

EXPOSE 80
