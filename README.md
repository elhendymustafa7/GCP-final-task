# GCP FINAL TASK

It is a simple reload counter made using tornado the python framework and redis hosted on GKE

## Steps How to run

Cloned the app code from https://github.com/atefhares/DevOps-Challenge-Demo-Code

```bash
terraform init
terraform plan
terraform apply
```
create bucket and upload yaml files .

push image to GCR

```bash
docker tag test:latest
docker push us.gcr.io/mustafa-375013/test:latest
```