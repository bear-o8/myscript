sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
# 更新apt包索引
sudo apt-get update

# 为支持https
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# 添加Docker GPG秘钥
# 国内源
curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
# 推荐国内源
sudo add-apt-repository \
	    "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
	        $(lsb_release -cs) \
		    stable"
# 更新apt包索引
sudo apt-get update

# 安装docker
sudo apt-get install docker-ce docker-ce-cli containerd.io

# 添加镜像源
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://mirror.ccs.tencentyun.com"]
}
EOF
sudo systemctl enable docker
sudo systemctl start docker
