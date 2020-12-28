# 目标环境：------------------------
# 目录建立
ssh root@192.168.135.102  " mkdir -p  /home/h3c_file/" & exit
# 脚本拷贝
scp *  root@192.168.135.102:/home/h3c_file/
# 免密
ssh-copy-id -i .ssh/id_rsa.pub root@192.168.135.102

# 数据库源环境:------------------------------
# 数据库拷贝时源数据库vsftpd搭建
rpm -ivh  vsftpd-2.2.2-24.el6.x86_64.rpm --nodeps
service  vsftpd start
useradd ftpuser
passwd ftpuser
# 数据库目标环境:---------------------

# ftp客户端安装
rpm 


# crontab 每天一点执行
0 1 * * ?