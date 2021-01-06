# k8s-gcloud-deploy-container
Container for deploy to GCP GKE cluster

#### Usage

mount the directory with your `svc_account.json` file to `/tmp/certs`

for example, if your `svc_account.json` is in the directory you're running this container from:

```
docker build -t k8s-gcloud-deploy .
docker run -d --rm -v $(pwd):/tmp/certs \
    -v <path-to-deployments>:/deployments
    -e CLUSTER_NAME=cluster_name
    -e REGION=region
    -e PROJECT_NAME=project_name
    k8s-gcloud-deploy
```

#### Inspiration

https://github.com/messari/docker-google-cloud-sdk-auth-wrapper
