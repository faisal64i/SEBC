

replication node: ip-172-31-1-251.us-west-2.compute.internal
--
Run in master

[mysqld]
log-bin=mysql-bin
server-id=1

CREATE USER 'repl'@'%' IDENTIFIED BY 'Slave_pass1';

GRANT REPLICATION SLAVE ON *.* TO 'repl'@'ip-172-31-1-251.us-west-2.compute.internal' IDENTIFIED BY 'Slave_pass1';

SET GLOBAL binlog_format = 'ROW';

mysql> FLUSH TABLES WITH READ LOCK;

mysql> SHOW MASTER STATUS;

+------------------+----------+--------------+------------------+-------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+------------------+----------+--------------+------------------+-------------------+
| mysql-bin.000001 |      919 |              |                  |                   |
+------------------+----------+--------------+------------------+-------------------+
1 row in set (0.00 sec)


mysql> UNLOCK TABLES;


===== SLAVE


CHANGE MASTER TO
MASTER_HOST='ip-172-31-9-213.us-west-2.compute.internal',
MASTER_USER='repl',
MASTER_PASSWORD='Slave_pass1',
MASTER_LOG_FILE='mysql-bin.000001',
MASTER_LOG_POS=919;

START SLAVE;

SHOW SLAVE STATUS \G;

=======CM Server

yum install cloudera-manager-daemons cloudera-manager-server
