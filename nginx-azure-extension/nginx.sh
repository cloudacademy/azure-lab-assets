#!/bin/bash
apt-get update -y && apt-get upgrade -y
apt-get install -y nginx
echo "Congratulations! You have successfully installed NGINX on" $HOSTNAME "! using Azure VM Extension Command" | sudo tee -a /var/www/html/index.html