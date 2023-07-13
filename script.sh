#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 php libapache2-mod-php -y
echo "well done abdul" | sudo tee /var/www/html/index.php
sudo mv /var/www/html/index.html /var/www/html/index.html.temp
sudo systemctl restart apache2