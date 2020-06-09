# Kubernetes the Deltatre Way - CI/CD Demo - App

This is a very basic example of CI/CD Gitlab-based implementation, built using Hugo as demo app, deployed on a cluster using Helm's nginx chart, using GCR as image registry.

You can add content to the `/content` folder (see examples already added).

The build pipelines are based on Kaniko https://github.com/GoogleContainerTools/kaniko, and assume there is a "sa" variable in the Gitlab project, containing the GCP credentials of an apty privileged service account.

The Gitlab project should also be configured to have access to a cluster (we use GKE for the demo). The Gitlab/K8s integration is completely managed by Gitlab, so the pipelines configuration can be kept to a minimum.

For demonstration purposes, there are two deploy pipelines, one deployed automatically after the build stage, one to be triggered manually.
