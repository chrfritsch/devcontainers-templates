#!/bin/bash

# Install dependencies
composer install

# Setup docroot
DOCROOT=$(composer config extra.drupal-scaffold.locations.web-root)
echo "Setting up docroot: ${DOCROOT}"
rm -rf /var/www/html
ln -s "$(pwd)/${DOCROOT}" /var/www/html

# Start apache
apache2ctl start