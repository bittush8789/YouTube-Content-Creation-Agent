# Prometheus Installation Guide (K8s)

## 1. What is Prometheus?
Prometheus is an open-source systems monitoring and alerting toolkit.

## 2. Why use it?
- To collect metrics from your application (CPU, RAM, latency).
- To monitor Kubernetes health.
- Standard tool for cloud-native monitoring.

## 3. Installation Steps (via Helm)
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus
```

## 4. Verify Install
```bash
kubectl get pods -l "app.kubernetes.io/instance=prometheus"
```

## 5. Basic Commands
- Use `kubectl port-forward` to access the UI.
```bash
kubectl port-forward deployment/prometheus-server 9090
```

## 6. Common Issues
- **Issue**: PVC (Storage) not binding.
- **Fix**: Ensure your cluster has a default storage class (KIND provides one).
