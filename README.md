# vExpert Plex Deployment

The manifests within this repository are used to deploy Tanzu Community Edition
and plex into a Tanzu Kubernetes cluster.

This yaml can serve as an example for others to try deploying on their own
hardware.

- TanzuYaml directory - Includes YAML files for deployint Tanzu Community Editions clusters.

- metal-lb directory - This is a software load balancer used within a Kubernetes cluster. If you're using a cloud provider like VMware Cloud on AWS or AWS, or Azure, you can use their native load balancers instead of this in cluster load balancer.

- Packages directory - The package directory includes additional items used to operate the cluster. There is a script that deploys a few TCE packages like prometheus/grafana and fluentbit with an example values file. It also includes letsencrypt issuer files and a cloudflare secret used for verification and creation of tls certificates.

- plex directory - The plex directory includes the persistent volume claims, k8s services and ingress files and the plex server deployment manifests.