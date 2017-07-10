#!/usr/bin/env bash

# Make a database, if we don't already have one
echo -e "\nCreating database '${VVV_SITE_NAME}' (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS ${VVV_SITE_NAME}"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON ${VVV_SITE_NAME}.* TO wp@localhost IDENTIFIED BY 'wp';"
echo -e "\n DB operations done.\n\n"

# Nginx Logs
mkdir -p ${VVV_PATH_TO_SITE}/log
touch ${VVV_PATH_TO_SITE}/log/error.log
touch ${VVV_PATH_TO_SITE}/log/access.log

# Install and configure the latest stable version of WordPress
cd ${VVV_PATH_TO_SITE}
if ! $(wp core is-installed --allow-root); then
 wp core download --path="${VVV_PATH_TO_SITE}" --allow-root
 wp core config --dbname="${VVV_SITE_NAME}" --dbuser=wp --dbpass=wp --quiet --allow-root
 wp core multisite-install --url="${VVV_SITE_NAME}.dev" --quiet --title="${VVV_SITE_NAME}" --admin_name=admin --admin_email="admin@${VVV_SITE_NAME}.dev" --admin_password="password"
else
 wp core update
fi
