# Eksctl Installation Guide

## 1. What is Eksctl?
Eksctl is a simple CLI tool for creating and managing clusters on EKS - Amazon's Elastic Kubernetes Service.

## 2. Why use it?
- To create a full Kubernetes cluster on AWS with one command.
- To manage node groups (servers) easily.
- To configure IAM roles for service accounts.

## 3. Installation Steps

### Windows (via Chocolatey)
```powershell
choco install eksctl
```

### Linux
```bash
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
```

### macOS
```bash
brew upgrade eksctl && brew install eksctl
```

## 4. Verify Install
```bash
eksctl version
```

## 5. Basic Commands
- `eksctl create cluster --name my-eks`: Create a cluster.
- `eksctl get clusters`: List clusters.
- `eksctl delete cluster --name my-eks`: Delete a cluster.

## 6. Common Issues
- **Issue**: Requires AWS credentials.
- **Fix**: Run `aws configure` before using `eksctl`.
