## 文件与目录操作
### ls
* ls -lt 按照修改时间排序
* ls -li 显示inode号
* ls -ln 文件所属用户,组用数字表示
* ls -lr 反向排序
* ls -ls 显示块大小
* ls -lR 递归显示目录下所有文件
* ls -l | sort -k 5,5nr 按照文件大小排序

### cd
* cd -P dir 直接切换的符号连接的本来目录

### chgrp
* chgrp group filename
* chgrp -R group filename 递归

### chown
* chown user:group filename 同时更改用户和组所有者

## 网络
### netstat
* a 全部显示
* n 端口等以数字显示
* t 显示tcp
* u 显示udp
* e 显示扩展信息  
* p 显示socket对应的进程名称
    * netstat -antue 显示tcp,udp信息
    * netstat -ant 显示tcp信息
    * netstat -anu 显示udp信息
    * netstat -i 显示网络接口信息
    * netstat -l 显示处于监听状态的socket信息
    * netstat -r 显示路由表
    * netstat -s 显示每种协议的统计信息
    * netstat -nat | grep "192.168.1.15:22" |awk '{print $5}'|awk -F: '{print $1}'|sort|uniq -c|sort -nr|head -20 查看连接某服务端口最多的的IP地址
    * netstat -nat |awk '{print $6}'|sort|uniq -c|sort -rn tcp各种状态列表

### tcpdump




