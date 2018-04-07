kubeadm reset
sudo apt-get purge -y kubeadm kubectl kubelet kubernetes-cni kube*
sudo apt-get -y autoremove
sudo rm -Rf ~/.kube
sudo rm -Rf /etc/kubernetes
sudo rm -Rf /var/lib/etcd/
