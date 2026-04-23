# 🌐 YouTube Content Creation StoryForge Agent

[![Python Version](https://img.shields.io/badge/python-3.13+-3776AB.svg?style=flat&logo=python&logoColor=white)](https://www.python.org/downloads/)
[![License](https://img.shields.io/badge/license-MIT-44CC11.svg?style=flat)](LICENSE)
[![Docker](https://img.shields.io/badge/docker-container-2496ED.svg?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/kubernetes-orchestration-326CE5.svg?style=flat&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![GitHub Actions](https://img.shields.io/badge/ci/cd-github%20actions-2088FF.svg?style=flat&logo=github-actions&logoColor=white)](https://github.com/features/actions)

**StoryForge Agent** is a production-grade, AI-powered platform designed for video creators. It automates the entire research and scripting workflow—transforming raw topics into high-impact scripts for YouTube Shorts, Reels, and Instagram in seconds.

---

## 🚀 Key Features

- **🔍 Real-Time Research Engine**: Integrated with **Tavily Search API** for up-to-the-minute web data.
- **🧠 AI Summarization**: Leverages **Google Gemini 2.0 Flash** to distill complex research into concise insights.
- **🎬 Professional Scriptwriting**: Automatically generates high-conversion short-form video scripts.
- **🌐 Multi-Interface Ecosystem**:
  - **Interactive Dashboard**: Modern Streamlit UI with Glassmorphism design.
  - **REST API**: Flask-based backend for custom integrations.
  - **MCP Server**: Model Context Protocol support for AI assistant integration.
- **🛡️ Enterprise Grade**: Built-in DevSecOps, Monitoring, and Kubernetes readiness.

---

## 🛠️ Technology Stack

| Category | Tools & Technologies |
| :--- | :--- |
| **Core AI** | Google Gemini 2.0 Flash, Tavily Search API |
| **Backend** | Python 3.13, Flask, Pydantic |
| **Frontend** | Streamlit, Custom CSS (Glassmorphism) |
| **DevOps** | Docker, Kubernetes (KIND & EKS), Helm |
| **DevSecOps** | Trivy (Image Scan), Semgrep (Code Scan) |
| **LLMOps** | Mem0, Chroma DB, Prompt Versioning |
| **Monitoring** | Prometheus, Grafana |

---

## 🏗️ Architecture Overview

The system follows a modular micro-service architecture:

1.  **Frontend (Streamlit)**: User interaction and visualization.
2.  **API Gateway (Flask)**: Orchestrates requests between AI and data modules.
3.  **AI Engine**: Handles prompt engineering and LLM orchestration.
4.  **Vector DB (Chroma)**: Manages context and memory for improved response relevance.

---

## 🚀 Getting Started

### 1. Prerequisites
- Python 3.13+
- Docker Desktop (for containerized run)
- [Google AI Studio Key](https://aistudio.google.com/)
- [Tavily API Key](https://tavily.com/)

### 2. Environment Setup
Create a `.env` file in the root directory:
```env
GEMINI_API_KEY=your_key_here
TAVILY_API_KEY=your_key_here
```

### 3. Local Installation (via UV)
```bash
# Install UV package manager
pip install uv

# Sync dependencies
uv sync

# Run the app
uv run streamlit run frontend/app.py
```

### 4. Docker Deployment
```bash
# Start all services (App, Redis, Qdrant)
docker-compose up -d
```

---

## ☸️ Kubernetes Deployment

### KIND (Local Cluster)
```bash
# Create cluster
kind create cluster --name yt-platform

# Deploy all manifests
cd k8s-simple
./deploy-all.sh
```

### AWS EKS (Production)
```bash
# Create EKS cluster
eksctl create cluster --name yt-platform --region ap-south-1 --nodes 2

# Apply manifests
kubectl apply -f k8s-simple/
```

---

## 🛡️ DevSecOps & CI/CD

This project implements a complete security and deployment pipeline via **GitHub Actions**:

- **Linting**: Code quality checks.
- **Security Scan**: **Trivy** scans Docker images for vulnerabilities.
- **Static Analysis**: **Semgrep** scans Python code for security bugs.
- **Automated Deployment**: Validates manifests in a KIND cluster on every push.

---

## 📊 Monitoring & Observability

Standard enterprise monitoring is provided via Prometheus and Grafana:
- **Metrics**: API latency, Token usage, Pod health, and Error rates.
- **Dashboards**: Pre-configured Grafana boards for visual tracking.

---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](docs/contributing.md) for details on our code of conduct and the process for submitting pull requests.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 📞 Support & Author

Developed with Passion for Creators by **Bittu Sharma**.
For support, please open an issue or contact the maintainer directly.

---
*Powered by Google Gemini & Tavily Search.*
