sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
# 更新apt包索引
sudo apt-get update

sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
# step 2: 安装GPG证书
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
# Step 3: 写入软件源信息
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
# Step 4: 更新并安装 Docker-CE
sudo apt-get -y update
sudo apt-get -y install docker-ce


# # 添加镜像源
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://em2r99v3.mirror.aliyuncs.com"]
}
EOF
sudo systemctl enable docker
sudo systemctl start docker


# sudo mkdir -p /etc/docker
# sudo tee /etc/docker/daemon.json <<-'EOF'
# {
#   "registry-mirrors": ["https://em2r99v3.mirror.aliyuncs.com"]
# }
# EOF
# sudo systemctl daemon-reload
# sudo systemctl restart docker
