#!/bin/bash
set -x

echo "----- INITIALIZING CUSTOM AMI CREATION -----"
sudo apt-get update

sudo apt-get -y install apt-transport-https ca-certificates curl gnupg software-properties-common

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get -y install docker-ce