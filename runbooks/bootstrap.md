# Kubernetes Bootstrap Runbook

## Install Container Runtime

Install:
- containerd

Disable:
- swap

Configure:
- kernel modules
- sysctl

## Install Kubernetes Packages

Install:
- kubeadm
- kubelet
- kubectl

## Initialize First Control Plane

Run on cp1:

kubeadm init --control-plane-endpoint "<cp1-ip>:6443" --upload-certs

## Join Remaining Control Planes

Run generated join command with:

--control-plane

## Join Workers

Run worker join command.

## Install Calico

kubectl apply -f calico.yaml