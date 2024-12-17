#!/bin/bash

echo "< INICIO DE ARCHIVO DE CONFIGURACION DE WORDPRESS >"

sed -i "s/database_name_here/$MARIADB_NAME/g" /var/www/html/wp-config.php
sed -i "s/username_here/$MARIADB_USER/g" /var/www/html/wp-config.php
sed -i "s/password_here/$MARIADB_PASS/g" /var/www/html/wp-config.php
sed -i "s/localhost/$MARIADB_NAME/g" /var/www/html/wp-config.php

php-fpm7.4 -y /etc/php/7.4/fpm/php-fpm.conf -F

echo "< SI VES ESTE ECHO ES QUE NO SE HA INICIADO PHP... >"