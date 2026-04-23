# Kubectl Installation Guide

## 1. What is Kubectl?
Kubectl is the command-line tool for interacting with Kubernetes clusters.

## 2. Why use it?
- To deploy applications to Kubernetes.
- To inspect cluster resources (Pods, Services, etc.).
- To debug and manage the cluster.

## 3. Installation Steps

### Windows
```powershell
curl.exe -LO "https://dl.k8s.io/release/v1.30.0/bin/windows/amd64/kubectl.exe"
# Move to a folder in your PATH
```

### Linux
```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

### macOS
```bash
brew install kubectl
```

## 4. Verify Install
```bash
kubectl version --client
```

## 5. Basic Commands
- `kubectl get pods`: List all pods.
- `kubectl apply -f file.yaml`: Deploy a file.
- `kubectl logs <pod-name>`: See pod logs.

## 6. Common Issues
- **Issue**: "The connection to the server localhost:8080 was refused".
- **Fix**: Ensure your Kubernetes cluster (KIND/EKS) is running and configured in `~/.kube/config`.
