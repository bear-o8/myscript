sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
# ����apt������
sudo apt-get update

# Ϊ֧��https
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# ���Docker GPG��Կ
# ����Դ
curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
# �Ƽ�����Դ
sudo add-apt-repository \
	    "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
	        $(lsb_release -cs) \
		    stable"
# ����apt������
sudo apt-get update

# ��װdocker
sudo apt-get install docker-ce docker-ce-cli containerd.io

# ��Ӿ���Դ
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://mirror.ccs.tencentyun.com"]
}
EOF
sudo systemctl enable docker
sudo systemctl start docker
