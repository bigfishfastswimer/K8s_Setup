#!/bin/bash -xe

kubeadm_init_string=$1  #[your unique string from the kubeadm init command]

sudo kubeadm join $kubeadm_init_string
