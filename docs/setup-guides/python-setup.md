# Python Installation Guide

## 1. What is Python?
Python is a high-level, interpreted programming language used for web apps, AI, and scripting.

## 2. Why use it?
- Core language for our YouTube Agent.
- Huge ecosystem for AI (Google Gemini, Tavily).
- Easy to learn and read.

## 3. Installation Steps

### Windows
1. Download the latest version from [python.org](https://www.python.org/).
2. **IMPORTANT**: Check "Add Python to PATH" during installation.

### Linux (Ubuntu)
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv -y
```

### macOS
```bash
brew install python
```

## 4. Verify Install
```bash
python --version
pip --version
```

## 5. Basic Commands
- `python -m venv venv`: Create a virtual environment.
- `pip install -r requirements.txt`: Install dependencies.
- `python app.py`: Run a script.

## 6. Common Issues
- **Issue**: "python not found".
- **Fix**: Use `python3` instead of `python` on Linux/macOS.
