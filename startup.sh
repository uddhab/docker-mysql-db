#/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db
    mysql_secure_installation

    /usr/bin/mysqld_safe &
    sleep 10s

    echo "CREATE USER 'admin'@'%' IDENTIFIED BY 'password';" | mysql
    echo "GRANT ALL PRIVILEGES ON *.* TO admin@'%' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    killall mysqld
    sleep 10s
fi

/usr/bin/mysqld_safe
