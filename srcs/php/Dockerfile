FROM debian:bullseye

RUN apt-get update && apt-get install -y php7.4-fpm

# php7.4-fpmは/run/phpを作らない
RUN mkdir -p /run/php 
RUN mkdir -p /var/www/html

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html
COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY ./index.php /var/www/html/index.php
COPY ./index.html /var/www/html/index.html

# PHP-FPMをフォアグラウンドで起動
CMD ["php-fpm7.4", "-F"]
