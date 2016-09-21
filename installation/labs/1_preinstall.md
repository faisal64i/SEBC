# wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.rpm"

http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.rpm

rpm -ivh jdk-8u101-linux-x64.rpm

export JAVA_HOME=/usr/java/jdk1.8.0_101/

export PATH=$PATH:$HOME/bin:$JAVA_HOME

source ~/.bash_profile

http://dev.mysql.com/downloads/file/?id=465603


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
mysql config:

transaction-isolation=READ-COMMITTED

===== Create users
CREATE USER
'amon'@'localhost' IDENTIFIED BY 'amon_password',
'rman'@'localhost' IDENTIFIED BY 'rman_password',
'hive'@'localhost' IDENTIFIED BY 'hive_password',
'sentry'@'localhost' IDENTIFIED BY 'sentry_password',
'nav'@'localhost' IDENTIFIED BY 'nav_password',
'navms'@'localhost' IDENTIFIED BY 'navms_password',
'cm'@'localhost' IDENTIFIED BY 'cm_password'
PASSWORD EXPIRE NEVER
;

CREATE USER
'hue'@'localhost' IDENTIFIED BY 'Hue!2password',
'oozie'@'localhost' IDENTIFIED BY 'Oozie!2password'
PASSWORD EXPIRE NEVER
;

=== Create DB

CREATE DATABASE hue DEFAULT CHARACTER SET utf8;
GRANT ALL on hue.* TO 'hue'@'%' IDENTIFIED BY 'Hue!2password';


CREATE DATABASE oozie DEFAULT CHARACTER SET utf8;
GRANT ALL on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'Oozie!2password';



----

CREATE DATABASE cmserver DEFAULT CHARACTER SET utf8;
GRANT ALL on cmserver.* TO 'cm'@'%' IDENTIFIED BY 'cm_password';

CREATE DATABASE amon DEFAULT CHARACTER SET utf8;
GRANT ALL on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';


CREATE DATABASE rman DEFAULT CHARACTER SET utf8;
GRANT ALL on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';

CREATE DATABASE metastore DEFAULT CHARACTER SET utf8;
GRANT ALL on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';

CREATE DATABASE sentry DEFAULT CHARACTER SET utf8;
GRANT ALL on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';

CREATE DATABASE nav DEFAULT CHARACTER SET utf8;
GRANT ALL on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_password';

CREATE DATABASE navms DEFAULT CHARACTER SET utf8;
GRANT ALL on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_password';
-----
