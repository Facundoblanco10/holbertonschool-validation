#!/bin/bash

chmod +x setup.sh

# Set up the production website in an Ubuntu 18.04 Docker container
echo "Setting up production website in Docker container..."
docker run -it --name production_website -p 80:80 ubuntu:18.04

# Install GoHugo and Make with apt-get
echo "Installing GoHugo and Make..."
apt-get update && apt-get install -y hugo make

# Run the make build command
echo "Running make build..."
make -n build