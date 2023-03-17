#!bin/bash

sudo kubectl get svc test
if [ $(echo $?) == "0" ]
then
  echo "service already exists"
else
  sudo kubectl apply -f ./web_service.yaml
fi
