sysctl -w vm.swappiness=1

findmnt

yum install nscd

service nscd start

yum install -y ntp

http://www.cloudera.com/documentation/enterprise/5-5-x/topics/install_cdh_enable_ntp.html
