#!/bin/bash
sudo apt install -y apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg
sudo apt-get update && sudo apt-get install -y google-cloud-cli
sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
sudo gcloud container clusters get-credentials gke --zone us-west1-a --project mustafa-375013
sudo gsutil cp -r gs://mybucket/files /home/mustafa/
sudo kubectl create -Rf /home/mustafa/files
# sudo kubectl apply -f web-deployment.yaml
# sudo kubectl apply -f web-service.yaml
# sudo kubectl apply -f basic-ingress.yaml
