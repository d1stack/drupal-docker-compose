#!/usr/bin/bash

docker compose exec drupal drush si standard install_configure_form.enable_update_status_emails=NULL \
  --site-name="Your website" --site-mail="admin@site.com" \
  --account-name="admin" --account-mail="admin@site.com" \
  --account-pass="password123!" \
  --yes
