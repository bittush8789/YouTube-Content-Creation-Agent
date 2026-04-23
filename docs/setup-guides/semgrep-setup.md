# Semgrep Installation Guide

## 1. What is Semgrep?
Semgrep is a fast, open-source static analysis tool for finding bugs and enforcing code standards.

## 2. Why use it?
- Scans your code for security vulnerabilities.
- Enforces best practices in Python/JS.
- Integrates easily with GitHub Actions.

## 3. Installation Steps

### Windows / Linux / macOS (via Pip)
```bash
pip install semgrep
```

### macOS (via Brew)
```bash
brew install semgrep
```

## 4. Verify Install
```bash
semgrep --version
```

## 5. Basic Commands
- `semgrep scan --config auto`: Scan your project automatically.
- `semgrep scan --config p/python`: Scan specifically for Python issues.

## 6. Common Issues
- **Issue**: "Command not found" after pip install.
- **Fix**: Ensure your Python scripts folder is in your system PATH.
