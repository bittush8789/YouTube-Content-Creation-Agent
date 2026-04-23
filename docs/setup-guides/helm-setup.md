# Helm Installation Guide

## 1. What is Helm?
Helm is the package manager for Kubernetes. It uses "Charts" to define, install, and upgrade Kubernetes applications.

## 2. Why use it?
- Simplifies complex deployments.
- Manage application versions easily.
- Reuse configurations across different environments.

## 3. Installation Steps

### Windows
```powershell
choco install kubernetes-helm
```

### Linux
```bash
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

### macOS
```bash
brew install helm
```

## 4. Verify Install
```bash
helm version
```

## 5. Basic Commands
- `helm repo add bitnami https://charts.bitnami.com/bitnami`: Add a repo.
- `helm install my-release bitnami/redis`: Install Redis.
- `helm list`: Show installed charts.

## 6. Common Issues
- **Issue**: Chart not found.
- **Fix**: Run `helm repo update` to refresh chart lists.
