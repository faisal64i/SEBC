

can't find:  /etc/yum/repos.d

====

[root@ip-172-31-8-189 ec2-user]# ls /etc/yum/
fssnap.d  pluginconf.d  protected.d  vars  version-groups.conf  yum-cron.conf  yum-cron-hourly.conf
[root@ip-172-31-8-189 ec2-user]#

===

CREATE USER
'cdhuser'@'localhost' IDENTIFIED BY 'Cdh!2password'
PASSWORD EXPIRE NEVER
;

GRANT ALL on *.* TO 'cdhuser'@'%' IDENTIFIED BY 'Cdh!2password';

====


head: cannot open ‘/var/log/cloudera-scm-server/cloudera-scm-server.log’ for reading: No such file or directory


====


grep: /var/log/cloudera-scm-server/cloudera-scm-server.log: No such file or directory


===
