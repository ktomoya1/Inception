FROM debian:bullseye

RUN apt-get update && apt-get install -y php-fpm php-mysql
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

# php7.4-fpmは/run/phpを作らない
RUN mkdir -p /run/php /var/www/html

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzf /latest.tar.gz -C /var/www/html
RUN rm /latest.tar.gz

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./html /var/www/html

# PHP-FPMをフォアグラウンドで起動
CMD ["php-fpm7.4", "-F"]
