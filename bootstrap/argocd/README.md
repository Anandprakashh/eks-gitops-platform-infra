# Argo CD Bootstrap

This directory contains the initial Argo CD bootstrap resources for the EKS GitOps platform.

## Files

- `project.yaml`: Argo CD project for platform-managed workloads.
- `platform-root-app.yaml`: Root Argo CD application pointing to the application GitOps repository.
- `apps-repo-secret.example.yaml`: Example repository secret manifest for private repository integration.

## Apply bootstrap resources

```bash
kubectl apply -f bootstrap/argocd/project.yaml
kubectl apply -f bootstrap/argocd/platform-root-app.yaml
```
