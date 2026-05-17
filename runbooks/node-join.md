# Kubernetes Node Join Runbook

## Generate Join Command

Run on cp1:

kubeadm token create --print-join-command

## Join Worker

Run generated command on worker nodes.

## Join Control Plane

Run generated command with:

--control-plane

## Verify Cluster

kubectl get nodes