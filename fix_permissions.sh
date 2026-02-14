#!/bin/bash
set -e

# Permissions
chmod 0777 ./drupal-sites/default/files
chmod 0755 ./drupal-sites/default
chmod 0644 ./drupal-sites/default/settings.php
find ./drupal-profiles/cloudrun -type d -exec chmod 0755 {} \;
find ./drupal-profiles/cloudrun -type f -exec chmod 0644 {} \;
