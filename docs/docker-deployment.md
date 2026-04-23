# Docker Setup & Deployment Guide

## 1. Build Images
```bash
# Build Backend
docker build -t yt-backend ./backend

# Build Frontend
docker build -t yt-frontend ./frontend
```

## 2. Run with Docker Compose
```bash
docker compose up -d
```
Access the app at `http://localhost:8501`.

## 3. Verify Containers
```bash
docker ps
```
