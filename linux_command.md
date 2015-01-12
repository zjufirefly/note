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




