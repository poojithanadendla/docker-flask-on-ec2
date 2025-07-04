#!/bin/bash
echo "Building Docker image..."
sudo docker build -t myapp .

echo "Running Docker container on port 80..."
sudo docker run -d -p 80:80 myapp

echo "Done. Visit your EC2 public IP to view the app."
