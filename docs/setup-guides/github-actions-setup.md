# GitHub Actions Setup Guide

## 1. What is GitHub Actions?
GitHub Actions is a CI/CD platform that allows you to automate your build, test, and deployment pipeline directly from GitHub.

## 2. Why use it?
- Automate testing on every push.
- Build Docker images automatically.
- Deploy to Kubernetes (KIND/EKS) without manual work.

## 3. Setup Steps
1. Create a repository on GitHub.
2. Create a folder `.github/workflows/` in your project.
3. Add a YAML file (e.g., `ci.yml`) to that folder.
4. Commit and push the code.

## 4. Verify Setup
1. Go to your GitHub repository.
2. Click the **Actions** tab.
3. You should see your workflow running.

## 5. Basic Workflow Example
```yaml
name: CI
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Run a script
        run: echo "Hello GitHub Actions!"
```

## 6. Common Issues
- **Issue**: "Permission denied" during a step.
- **Fix**: Check the `GITHUB_TOKEN` permissions in repo settings.
