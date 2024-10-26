FROM debian:bullseye

RUN apt-get update && apt-get install -y php-fpm php-mysql
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

# php7.4-fpmは/run/phpを作らない
RUN mkdir -p /run/php 

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./html /var/www/html

# PHP-FPMをフォアグラウンドで起動
CMD ["php-fpm7.4", "-F"]
