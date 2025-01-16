# Importation de PHP-apache
FROM php:8.3-apache

RUN apt-get update && apt-get install -y \
    dos2unix \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql

# Initialisation et installation pour MYSQL
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

RUN a2enmod rewrite

COPY ./config/php/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN dos2unix /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD ["apache2-foreground"]