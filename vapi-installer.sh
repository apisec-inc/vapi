#!/bin/bash

rm -rf vapi
git clone https://github.com/apisec-inc/vapi.git
sudo docker stack rm vapi
sleep 20
sudo docker system prune -f
sleep 20
sudo docker system prune -f
cd vapi
sudo docker stack deploy -c docker-compose-swarm.yml vapi
sleep 20
sudo docker ps
echo " "
sleep 5
echo "Successfully redeployed Vapi services!!"
