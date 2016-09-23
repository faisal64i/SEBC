
AWS Region: US West
AMI: Red Hat Enterprise Linux 7.2 (HVM), SSD Volume Type - ami-775e4f16

The public/Private IPs:

Master: 54.191.198.36 | ec2-54-191-198-36.us-west-2.compute.amazonaws.com | ip-172-31-8-189.us-west-2.compute.internal
Slave: 54.218.114.103 | ec2-54-218-114-103.us-west-2.compute.amazonaws.com | ip-172-31-8-188.us-west-2.compute.internal

Node1: 54.187.66.6 | ec2-54-187-66-6.us-west-2.compute.amazonaws.com | 172.31.8.187
Node2: 54.187.144.171 | ec2-54-187-144-171.us-west-2.compute.amazonaws.com | 172.31.8.191
Node3: 54.244.41.211 | ec2-54-244-41-211.us-west-2.compute.amazonaws.com | 172.31.8.190
=====
[root@ip-172-31-8-189 ec2-user]# ls /usr/java
default  jdk1.8.0_101  latest

===== add user/group:

[root@ip-172-31-8-189 ec2-user]# groupadd pictures
[root@ip-172-31-8-189 ec2-user]# groupadd bridges
[root@ip-172-31-8-189 ec2-user]# useradd -g pictures weiner
useradd: user 'weiner' already exists
[root@ip-172-31-8-189 ec2-user]# usermode -g pictures weiner
bash: usermode: command not found
[root@ip-172-31-8-189 ec2-user]# usermod -g pictures weiner
[root@ip-172-31-8-189 ec2-user]# usermod -g bridges christie
[root@ip-172-31-8-189 ec2-user]# ls /etc/passwd
/etc/passwd
[root@ip-172-31-8-189 ec2-user]# more /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
avahi-autoipd:x:170:170:Avahi IPv4LL Stack:/var/lib/avahi-autoipd:/sbin/nologin
systemd-bus-proxy:x:999:997:systemd Bus Proxy:/:/sbin/nologin
systemd-network:x:998:996:systemd Network Management:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
polkitd:x:997:995:User for polkitd:/:/sbin/nologin
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
chrony:x:996:993::/var/lib/chrony:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
ec2-user:x:1000:1000:Cloud User:/home/ec2-user:/bin/bash
mysql:x:27:27:MySQL Server:/var/lib/mysql:/bin/false
christie:x:2500:2503::/home/christie:/bin/bash
weiner:x:2501:2502::/home/weiner:/bin/bash

====
