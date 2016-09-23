


wget http://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm

yum repolist enabled | grep mysql

yum install mysql-community-server

service mysqld start

service mysqld status

sudo grep 'temporary password' /var/log/mysqld.log

==
$ sudo /usr/bin/mysql_secure_installation
[...]
Enter current password for root (enter for none):
OK, successfully used password, moving on...
[...]
Set root password? [Y/n] y
New password:
Re-enter new password:
Remove anonymous users? [Y/n] Y
[...]
Disallow root login remotely? [Y/n] N
[...]
Remove test database and access to it [Y/n] Y
[...]
Reload privilege tables now? [Y/n] Y
All done!
==
password change:
password: FaisalZaman@016

====
JDBC Driver:

wget http://dev.mysql.com/downloads/file/?id=462849

======

Connect: mysql --host=localhost --user=root --password=FaisalZaman@016

======


    CREATE DATABASE scm DEFAULT CHARACTER SET utf8;
    CREATE DATABASE rman DEFAULT CHARACTER SET utf8;
    CREATE DATABASE hive DEFAULT CHARACTER SET utf8;
    CREATE DATABASE oozie DEFAULT CHARACTER SET utf8;
    CREATE DATABASE sentry DEFAULT CHARACTER SET utf8;

=====


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> CREATE DATABASE scm DEFAULT CHARACTER SET utf8;
Query OK, 1 row affected (0.00 sec)

mysql>     CREATE DATABASE rman DEFAULT CHARACTER SET utf8;
Query OK, 1 row affected (0.00 sec)

mysql>     CREATE DATABASE hive DEFAULT CHARACTER SET utf8;
Query OK, 1 row affected (0.01 sec)

mysql>     CREATE DATABASE oozie DEFAULT CHARACTER SET utf8;
Query OK, 1 row affected (0.00 sec)

mysql>     CREATE DATABASE sentry DEFAULT CHARACTER SET utf8;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
| sys                |
+--------------------+
9 rows in set (0.00 sec)
====
mysql> SHOW GRANTS FOR 'root'@'localhost';
+---------------------------------------------------------------------+
| Grants for root@localhost                                           |
+---------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION |
| GRANT PROXY ON ''@'' TO 'root'@'localhost' WITH GRANT OPTION        |
+---------------------------------------------------------------------+
2 rows in set (0.00 sec)
======
mysql> SELECT @@version;
+-----------+
| @@version |
+-----------+
| 5.7.15    |
+-----------+
1 row in set (0.00 sec)
======
