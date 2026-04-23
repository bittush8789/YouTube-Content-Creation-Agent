# Docker Installation Guide

## 1. What is Docker?
Docker is a tool designed to make it easier to create, deploy, and run applications by using containers.

## 2. Why use it?
- "Works on my machine" - Containers run the same everywhere.
- Isolation of dependencies.
- Easy to scale.

## 3. Installation Steps

### Windows & macOS
1. Download **Docker Desktop** from [docker.com](https://www.docker.com/products/docker-desktop).
2. Install and restart your computer.
3. Ensure WSL 2 is enabled (for Windows).

### Linux (Ubuntu)
```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
```

## 4. Verify Install
```bash
docker --version
docker run hello-world
```

## 5. Basic Commands
- `docker build -t app .`: Build an image.
- `docker run -p 80:80 app`: Run a container.
- `docker ps`: List running containers.

## 6. Common Issues
- **Issue**: Docker Desktop requires a subscription.
- **Fix**: Use Docker Desktop for personal use (free) or switch to Colima/Rancher Desktop.
