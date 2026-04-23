# Grafana Installation Guide (K8s)

## 1. What is Grafana?
Grafana is an open-source visualization and analytics software.

## 2. Why use it?
- To create beautiful dashboards from Prometheus metrics.
- Visualize API performance and LLM token usage.
- Alerting based on data thresholds.

## 3. Installation Steps (via Helm)
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana grafana/grafana
```

## 4. Verify Install
```bash
kubectl get pods -l "app.kubernetes.io/name=grafana"
```

## 5. Basic Commands
- Get admin password:
```bash
kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
```
- Port forward to access UI:
```bash
kubectl port-forward service/grafana 3000:80
```

## 6. Common Issues
- **Issue**: Unable to login with 'admin'.
- **Fix**: Check the secret decoding command to get the correct password.
