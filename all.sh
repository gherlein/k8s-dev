sudo apt-get update
sudo apt-get install -y emacs25-nox build-essential git
sudo apt-get install -y apt-transport-https docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo bash -c 'curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add'
sudo bash -c 'cat << EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF'
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
#


