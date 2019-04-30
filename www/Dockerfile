FROM hermsi/alpine-fpm-php

RUN echo "date.timezone = \"Europe/Berlin\"" >> $PHP_INI_DIR/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /opt
RUN composer create-project symfony/website-skeleton webapp

VOLUME /var/www/webapp

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "sh", "/entrypoint.sh" ]