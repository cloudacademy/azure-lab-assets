#!/bin/bash
sudoapt-get update -y && apt-get upgrade -y
sudo apt-get install -y nginx
echo "Congratulations! You have successfully installed NGINX using Azure VM Extension Command" | sudo tee -a /var/www/html/index.html
