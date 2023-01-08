#!/bin/bash

chmod +x setup.sh

# Set up the production website in an Ubuntu 18.04 Docker container
echo "Setting up production website in Docker container..."
docker run -it --name production_website -p 80:80 ubuntu:18.04

# Install wget and Make with apt-get
echo "Installing GoHugo, wget and Make..."
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.79.0/hugo_0.79.0_Linux-64bit.deb
dpkg -i hugo_0.79.0_Linux-64bit.deb

# Run the make build command
echo "Running make build..."
make build