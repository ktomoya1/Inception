#!/bin/bash

if [ ! -n "$(ls -A /var/www/html)" ]; then
	cd /var/www/html

	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar

	./wp-cli.phar core download --allow-root
	./wp-cli.phar config create \
		--dbname="${DB_NAME}" \
		--dbuser="${DB_USER}" \
		--dbpass="${DB_PASSWORD}" \
		--dbhost="${DB_HOST}" \
		--allow-root
	./wp-cli.phar core install \
		--url=localhost \
		--title=inception \
		--admin_user="${ADMIN_USER:-admin}" \
		--admin_password="${ADMIN_PASSWORD:-admin}" \
		--admin_email="${ADMIN_EMAIL:-admin@admin.com}" \
		--allow-root
fi

php-fpm7.4 -F