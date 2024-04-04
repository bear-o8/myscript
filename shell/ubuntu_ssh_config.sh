cp /etc/apt/sources.list /etc/apt/sources.list.back
sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list
apt update
apt install openssh-server
echo "PermitRootLogin yes">>/etc/ssh/sshd_config
service ssh start
