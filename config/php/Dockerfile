# Importation de PHP-apache
FROM PHP:8.3-apache

# Initialisation et installation pour MYSQL
RUN docker-php-ext-install pdo-mysql && docker-php-ext-enable pdo_mysql

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD ["apache2-foreground"]