#!/bin/bash
sudo yum update -y
sudo yum install -y httpd php php-mysqlnd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/index.php
