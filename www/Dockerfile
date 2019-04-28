FROM hermsi/alpine-fpm-php

RUN echo "date.timezone = \"Europe/Berlin\"" >> $PHP_INI_DIR/php.ini

# SSH Access to Docker


# Composer 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

COPY ["./", "/var/www"]

VOLUME /var/www
VOLUME /var/www/html

WORKDIR /var/www/html
EXPOSE 9000
