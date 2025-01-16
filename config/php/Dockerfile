# Importation de PHP-apache
FROM php:8.3-apache

# Initialisation et installation pour MYSQL
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

RUN chmod +x ./config/php/entrypoint.sh
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD ["apache2-foreground"]