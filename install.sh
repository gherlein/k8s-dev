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
#sudo kubeadm init
#
# run on all nodes
#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config
#
# deploy a pod network from the master
#sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
#sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel-rbac.yml
#
#
# join each node to the master
#sudo kubeadm join --token TOKEN MASTER_IP:6443





