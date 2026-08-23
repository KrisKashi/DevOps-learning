#!/bin/bash

# ---- Variables (filled in by Terraform templatefile()) ----
DB_NAME="${DB_NAME}"
DB_USER="${DB_USER}"
DB_PASS="${DB_PASS}"

# ---- Update system ----
dnf upgrade -y

# ---- Install LAMP packages ----
dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel mariadb105-server

# ---- Start & enable services ----
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb

# ---- Create WordPress database, user, and grant privileges ----
mysql -u root <<EOF
CREATE DATABASE \`${DB_NAME}\`;
CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'localhost';
FLUSH PRIVILEGES;
EOF

# ---- Download WordPress ----
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# ---- Configure wp-config.php ----
cp wordpress/wp-config-sample.php wordpress/wp-config.php
sed -i "s/database_name_here/${DB_NAME}/" wordpress/wp-config.php
sed -i "s/username_here/${DB_USER}/" wordpress/wp-config.php
sed -i "s/password_here/${DB_PASS}/" wordpress/wp-config.php

# ---- Deploy WordPress files ----
cp -r wordpress/* /var/www/html/

# ---- Fix permissions ----
chown -R apache:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
