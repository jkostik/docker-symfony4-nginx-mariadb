#!/bin/sh

if [ ! -f /var/www/webapp/DONT_REMOVE.lck ]; then
    cp -R /opt/webapp/ /var/www/
    touch /var/www/webapp/DONT_REMOVE.lck
fi

exec php-fpm