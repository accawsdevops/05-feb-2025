#!/bin/bash
sudo systemctl stop nginx   # It will stop the Nginx
echo "Clearing old build files..."
sudo rm -rf /usr/share/nginx/html/* # Remove old app files from nginx

echo "Copying new build files to Nginx directory..."
sudo cp -r /home/ec2-user/nodejsbuild/build/* /usr/share/nginx/html/    #copy new app file to nginx

echo "Restarting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx #restart nginx
