# Git Installation Guide

## 1. What is Git?
Git is a Version Control System (VCS) that tracks changes in your code and allows multiple developers to work on the same project simultaneously.

## 2. Why use it?
- To keep a history of your code changes.
- To collaborate with others.
- To deploy code to GitHub and other platforms.

## 3. Installation Steps

### Windows
1. Download from [git-scm.com](https://git-scm.com/download/win).
2. Run the installer and follow the defaults.
3. Open Terminal/CMD and type `git --version`.

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install git -y
```

### macOS
```bash
brew install git
```

## 4. Verify Install
```bash
git --version
```

## 5. Basic Commands
- `git init`: Initialize a new repo.
- `git add .`: Stage all changes.
- `git commit -m "message"`: Save changes.
- `git push`: Upload to GitHub.

## 6. Common Issues
- **Issue**: "git is not recognized".
- **Fix**: Add Git to your system PATH during installation.
