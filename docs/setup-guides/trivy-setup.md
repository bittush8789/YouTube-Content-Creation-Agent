# Trivy Installation Guide

## 1. What is Trivy?
Trivy is a comprehensive security scanner for container images, file systems, and Git repositories.

## 2. Why use it?
- To detect vulnerabilities in your Docker images.
- Part of DevSecOps pipeline.
- Scans for misconfigurations and hardcoded secrets.

## 3. Installation Steps

### Windows
```powershell
winget install aquasecurity.trivy
```

### Linux
```bash
sudo apt-get install wget apt-transport-https gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy
```

### macOS
```bash
brew install aquasecurity/trivy/trivy
```

## 4. Verify Install
```bash
trivy --version
```

## 5. Basic Commands
- `trivy image <image-name>`: Scan a Docker image.
- `trivy fs .`: Scan the current directory for secrets and issues.

## 6. Common Issues
- **Issue**: Database update taking too long.
- **Fix**: Trivy downloads a vulnerability DB on first run. Be patient!
