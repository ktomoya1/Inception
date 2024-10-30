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
		--url="${SITE_URL}" \
		--title=inception \
		--admin_user="${ADMIN_USER}" \
		--admin_password="${ADMIN_PASSWORD}" \
		--admin_email="${ADMIN_EMAIL}" \
		--allow-root
fi

exec "$@"