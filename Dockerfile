FROM drupal:11.2-php8.4-apache-bookworm

COPY drupal-sites/default/settings.php /opt/drupal/web/sites/default/

# Uncomment if you want the custom composer files
#COPY composer.json /opt/drupal
#COPY composer.lock /opt/drupal

# Add composer first, since base image doesn't include it
COPY --from=composer:lts /usr/bin/composer /usr/bin/composer

ENV PATH="$PATH:/opt/drupal/vendor/bin"

RUN composer install && \
    composer require 'drupal/bootstrap5:^4.0' && \
    composer require --dev drush/drush
