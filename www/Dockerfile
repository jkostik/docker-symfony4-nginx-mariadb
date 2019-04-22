FROM hermsi/alpine-fpm-php

RUN echo "date.timezone = \"Europe/Berlin\"" >> $PHP_INI_DIR/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
RUN cd /var/www
RUN composer create-project symfony/website-skeleton webapp

#COPY ["./", "/var/www"]

WORKDIR /var/www/webapp

#VOLUME /var/www
VOLUME /var/www/webapp
