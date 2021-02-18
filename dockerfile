
FROM php:7.4-apache

RUN apt-get update
RUN apt-get install nano
RUN apt-get install acl
COPY index.php /var/www/html/
COPY trucorp-db.sql /var/www/html/
RUN setfacl -R -m u:www-data:rwx /var/www/html/
RUN setfacl -R -m g:www-data:rwx /var/www/html/
RUN chmod 774 /var/www/html/

EXPOSE 80
