#!/bin/sh
project_id=$(gcloud config get-value project)
git clone https://github.com/AbdouBouallaga/tf_script.git tfinfra
cd tfinfra
terraform init
terraform fmt -recursive
terraform plan
terraform apply -auto-approve