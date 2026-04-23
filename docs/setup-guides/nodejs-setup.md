# Node.js Installation Guide

## 1. What is Node.js?
Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.

## 2. Why use it?
- For modern frontends (React/Next.js).
- For build tools and some monitoring scripts.
- To run CLI tools like Tailwind or certain security scanners.

## 3. Installation Steps

### Windows & macOS
1. Download the **LTS** version from [nodejs.org](https://nodejs.org/).
2. Run the installer.

### Linux (Ubuntu)
```bash
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
```

## 4. Verify Install
```bash
node -v
npm -v
```

## 5. Basic Commands
- `npm init`: Initialize a new project.
- `npm install <package>`: Install a package.
- `npm run dev`: Start a development server.

## 6. Common Issues
- **Issue**: "npm permissions" on Linux.
- **Fix**: Use `nvm` (Node Version Manager) to manage installations.
