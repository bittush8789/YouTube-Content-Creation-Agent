# KIND Installation Guide

## 1. What is KIND?
KIND (Kubernetes IN Docker) is a tool for running local Kubernetes clusters using Docker container "nodes".

## 2. Why use it?
- Very fast to start.
- Runs entirely inside Docker.
- Perfect for local development and testing.

## 3. Installation Steps

### Windows (via Chocolatey or Direct)
```powershell
curl.exe -Lo kind-windows-amd64.exe https://kind.sigs.k8s.io/dl/v0.23.0/kind-windows-amd64
# Rename to kind.exe and add to PATH
```

### Linux
```bash
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

### macOS
```bash
brew install kind
```

## 4. Verify Install
```bash
kind --version
```

## 5. Basic Commands
- `kind create cluster --name my-cluster`: Start a cluster.
- `kind get clusters`: List clusters.
- `kind delete cluster --name my-cluster`: Remove a cluster.

## 6. Common Issues
- **Issue**: Docker must be running.
- **Fix**: Start Docker Desktop before running KIND.
