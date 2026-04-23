# KIND Kubernetes Deployment Guide

## 1. Create Cluster
```bash
kind create cluster --name yt-platform
```

## 2. Deploy Manifests
```bash
cd k8s-simple
./deploy-all.sh
```

## 3. Verify Deployment
```bash
kubectl get pods -n yt-platform
kubectl get svc -n yt-platform
```

## 4. Cleanup
```bash
kind delete cluster --name yt-platform
```
