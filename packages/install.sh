

tanzu package repository add tce-repo \
  --url projects.registry.vmware.com/tce/main:0.9.1 \
  --namespace tanzu-package-repo-global

tanzu package install contour \
  --package-name contour.community.tanzu.vmware.com \
  --version 1.18.1 --create-namespace

tanzu package install cert-manager \
  --package-name cert-manager.community.tanzu.vmware.com \
  --version 1.5.3 --create-namespace

tanzu package install prometheus \
  --package-name prometheus.community.tanzu.vmware.com \
  --version 2.27.0 --create-namespace

tanzu package install grafana \
  --package-name grafana.community.tanzu.vmware.com \
  --version 7.5.7 --create-namespace

tanzu package install fluentbit \
  --package-name fluent-bit.community.tanzu.vmware.com \
  --version 1.7.5 --values fluent-values.yaml

kubectl apply -f cloudflare-secret

kubectl apply -f letsencrypt-prod.yaml

kubectl apply -f letsencrypt-staging.yaml
