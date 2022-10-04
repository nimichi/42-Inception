#!/bin/ash

#install wp-cli
mkdir -p /var/www/html/wordpress;
cd /var/www/html/wordpress/;
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

#run wordpress setup in cli console
wp core download --version=6.0.1
wp core install --url=mnies.42.fr --title="Inception" --admin_name=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --skip-email
wp user create $WP_USER1 $WP_USER1_EMAIL --role=author --user_pass=$WP_USER1_PASSWORD --path='/var/www/html/wordpress'

#run php-fpm
php-fpm7 -F