#!/bin/bash
# Security scan script
echo "Running Trivy Vulnerability Scan..."
trivy image yt-backend:latest
trivy image yt-frontend:latest

echo "Running Semgrep Code Scan..."
semgrep scan --config auto .
