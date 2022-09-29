#!/bin/ash

sed -e '/skip-networking/s/^/#/g' -i /etc/my.cnf.d/mariadb-server.cnf

mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql --skip-test-db

mariadbd --user=mysql --datadir='/var/lib/mysql' --bootstrap <<EOF
FLUSH PRIVILEGES;
SET PASSWORD FOR root@localhost = PASSWORD("$MYSQL_ROOT_PASSWORD");
DROP USER IF EXISTS ''@'localhost';
DROP USER IF EXISTS ''@'$(hostname)';
CREATE DATABASE IF NOT EXISTS WORDPRESS_DB;
GRANT ALL PRIVILEGES ON WORDPRESS_DB.* TO "$MYSQL_USER"@"localhost" IDENTIFIED BY "$MYSQL_PASSWORD";
FLUSH PRIVILEGES;
EOF

mariadbd --user=mysql --datadir='/var/lib/mysql'
