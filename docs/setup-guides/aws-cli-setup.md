# AWS CLI Installation Guide

## 1. What is AWS CLI?
The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services from the terminal.

## 2. Why use it?
- To create and manage cloud resources (S3, EKS, EC2).
- To automate cloud infrastructure.
- To configure credentials for deployment.

## 3. Installation Steps

### Windows
1. Download the [AWS CLI MSI installer](https://awscli.amazonaws.com/AWSCLIV2.msi).
2. Run the installer.
3. Open CMD/PowerShell and type `aws --version`.

### Linux (x86_64)
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### macOS
```bash
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

## 4. Verify Install
```bash
aws --version
```

## 5. Basic Commands
- `aws configure`: Set up your keys and region.
- `aws s3 ls`: List your S3 buckets.
- `aws sts get-caller-identity`: Verify who you are logged in as.

## 6. Common Issues
- **Issue**: "Credentials not found".
- **Fix**: Run `aws configure` and enter your Access Key and Secret Key.
