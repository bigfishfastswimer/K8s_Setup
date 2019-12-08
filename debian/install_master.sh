#!/bin/bash -xe

#Initialize the cluster (run only on the master):

sudo kubeadm init --pod-network-cidr=10.244.0.0/16
#Set up local kubeconfig:

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# setup flannel CNI
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
