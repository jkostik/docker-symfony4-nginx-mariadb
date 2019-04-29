FROM hermsi/alpine-fpm-php

RUN echo "date.timezone = \"Europe/Berlin\"" >> $PHP_INI_DIR/php.ini

# SSH Access to Docker

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
RUN composer create-project symfony/website-skeleton webapp
#RUN su -p -l www-data -s /bin/sh -c "composer create-project symfony/website-skeleton webapp" 

VOLUME /var/www/html/webapp
WORKDIR /var/www/html/webapp