#!/bin/bash
set -e

echo "!!!This is dangerous!!!"
echo "!!!This will remove the drupal database and content in the drupal-config/, drupal-modules, drupal-sites/default/files!!!"
echo "Proceed (yes/no) ?"
read answer
if [[ "$answer" != "yes" ]]; then
  echo "Canceled. Exiting..."
  exit
fi
echo "Working ..."

mysql -h 127.0.0.1 -P 30366 -u drupal -pdrupal -e "DROP DATABASE drupal; CREATE DATABASE drupal;"

# Remove configuration, modules, files
sudo rm -rf ./drupal-config/* && rm -f ./drupal-config/.htaccess
rm -rf ./drupal-modules/custom/* && rm -f ./drupal-modules/custom/.htaccess
sudo rm -rf ./drupal-sites/default/files/* && rm -f ./drupal-sites/default/files/.htaccess

# Permissions
chmod 0777 ./drupal-sites/default/files
chmod 0755 ./drupal-sites/default
chmod 0644 ./drupal-sites/default/settings.php
