#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y nginx
echo "Congratulations! You have successfully installed NGINX on" $HOSTNAME "! using Azure VM Extension Command" | sudo tee -a /var/www/html/index.html