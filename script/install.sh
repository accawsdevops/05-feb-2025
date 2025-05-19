#!/bin/bash
sudo systemctl stop nginx
echo "Clearing old build files..."
sudo rm -rf /usr/share/nginx/html/*

echo "Copying new build files to Nginx directory..."
sudo cp -r /home/ec2-user/nodejsbuild/build/* /usr/share/nginx/html/

echo "Restarting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx
