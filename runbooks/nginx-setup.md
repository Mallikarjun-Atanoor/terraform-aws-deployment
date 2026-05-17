# External NGINX Setup

Purpose:
- HA traffic entry point
- Reverse proxy to Kubernetes applications

## Traffic Flow

Internet
→ NGINX
→ Kubernetes NodePort
→ Service
→ Pods

## Example Upstream

upstream k8s_backend {
    server worker1:30080;
    server worker2:30080;
}

## Example Proxy

location / {
    proxy_pass http://k8s_backend;
}