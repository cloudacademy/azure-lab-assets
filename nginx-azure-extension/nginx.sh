#!/bin/bash
sudoapt-get update -y && apt-get upgrade -y
sudo apt-get install -y nginx
sudo mkdir /var/www && sudo mkdir /var/www/html && echo "Congratulations! You have successfully installed NGINX on" $HOSTNAME "! using Azure VM Extension Command" | sudo tee -a /var/www/html/index.html