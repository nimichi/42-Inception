#!/bin/sh

mysql_install_db --user=$MYSQL_USER --datadir=/var/lib/mysql
mysql_secure_installation

sleep 2000

# /etc/init.d/mariadb setup
# /etc/init.d/mariadb start
# mysql_secure_installation <<_EOF_

# Y
# $MYSQL_ROOT_PASSWORD
# $MYSQL_ROOT_PASSWORD
# Y
# n
# Y
# Y
# _EOF_

# echo "CREATE DATABASE IF NOT EXISTS WORDPRESSDATABASE;" | mysql -u root
# echo "GRANT ALL ON WORDPRESSDATABASE.* TO '$MYSQL_USER'@'localhost' identified by '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;" | mysql -u root

# exec /usr/bin/mysqld --user=$MYSQL_USER --console