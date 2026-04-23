#!/bin/bash
# Deploy all manifests to KIND or EKS
kubectl apply -f namespace.yaml
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml
kubectl apply -f redis-deployment.yaml
kubectl apply -f qdrant-deployment.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

echo "Deployment complete! Checking pods..."
kubectl get pods -n yt-platform
