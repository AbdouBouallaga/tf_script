#!/bin/sh
#project_id=$(gcloud config get-value project)
if [ -d "./tfinfra" ]; then
	cd tfinfra
	git pull
else
	git clone https://github.com/AbdouBouallaga/tf_script.git tfinfra
	cd tfinfra
fi
terraform init
terraform fmt -recursive
terraform plan && terraform apply -auto-approve
