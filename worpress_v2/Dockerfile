FROM wordpress:5.8.2-apache

WORKDIR /usr/src/wordpress

RUN set -eux; \
    find /etc/apache2 -name '*.conf' -type f -exec sed -ri -e "s!/var/www/html!$PWD!g" -e "s!Directory /var/www/!Directory $PWD!g" '{}' +; \
    cp -s wp-config-docker.php wp-config.php

COPY ./php-conf/.htaccess /usr/src/wordpress/.htaccess
# COPY sources/themes/vodi/ ./wp-content/themes/vodi/
# COPY sources/themes/vodi-child/ ./wp-content/themes/vodi-child/

RUN mkdir ./wp-content/uploads && chown -R www-data:www-data ./wp-content/uploads
# COPY custom-plugin/ ./wp-content/plugins/custom-plugin/
