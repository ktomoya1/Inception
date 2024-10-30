FROM debian:bullseye

RUN apt-get update && apt-get install -y php-fpm php-mysql curl
# php7.4-fpmは/run/phpを作らない
RUN mkdir -p /run/php /var/www/html

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./init_wp.sh .

RUN chmod +x init_wp.sh

ENTRYPOINT [ "/init_wp.sh" ]

CMD ["php-fpm7.4", "-F"]