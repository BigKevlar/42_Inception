FROM debian:bullseye

ENV MARIADB_NAME=${MARIADB_NAME} \
    MARIADB_USER=${MARIADB_USER} \
    MARIADB_PASS=${MARIADB_PASS} \
    MARIADB_ROOT_PASS=$MARIADB_ROOT_PASS \
    WP_DB_HOST=${WP_DB_HOST} \
    WP_TITLE=${WP_TITLE} \
    WP_GROUP=${WP_GROUP} \
    WP_ADMIN=${WP_ADMIN} \
    WP_ADMIN_PASS=${WP_ADMIN_PASS} \
    WP_ADMIN_MAIL=${WP_ADMIN_MAIL} \
    WP_USER=${WP_USER} \
    WP_USER_PASS=${WP_USER_PASS} \
    WP_USER_MAIL=${WP_USER_MAIL}

RUN apt-get update -y && apt-get install -y \
    php7.4-fpm \
    unzip \
    wget \
    curl 

RUN useradd WP_USER && groupadd WP_GROUP && usermod -aG WP_GROUP WP_USER
RUN useradd WP_ADMIN && usermod -aG WP_GROUP WP_ADMIN && usermod -aG sudo WP_ADMIN

RUN mkdir -p /var/www/html && chown WP_USER:WP_GROUP /var/www/html

EXPOSE 9000

CMD ["./init_wp.sh"]