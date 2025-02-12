#!/bin/bash

# Env Vars
POSTGRES_USER="myuser"
POSTGRES_PASSWORD=$(openssl rand -base64 12)  # Generate a random 12-character password
POSTGRES_DB="mydatabase"
SECRET_KEY="my-secret" # for the demo app
NEXT_PUBLIC_SAFE_KEY="safe-key" # for the demo app

# Script Vars
APP_DIR=~/docknext/src/example.vtraefik
SWAP_SIZE="1G"  # Swap size of 1GB

# Update package list and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Add Swap Space
echo "Adding swap space..."
sudo fallocate -l $SWAP_SIZE /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# Make swap permanent
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt update
sudo apt install docker-ce -y

# Install Docker Compose
sudo rm -f /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Wait for the file to be fully downloaded before proceeding
if [ ! -f /usr/local/bin/docker-compose ]; then
  echo "Docker Compose download failed. Exiting."
  exit 1
fi

sudo chmod +x /usr/local/bin/docker-compose

# Ensure Docker Compose is executable and in path
sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

# Verify Docker Compose installation
docker-compose --version
if [ $? -ne 0 ]; then
  echo "Docker Compose installation failed. Exiting."
  exit 1
fi

# Ensure Docker starts on boot and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# For Docker internal communication ("db" is the name of Postgres container)
DATABASE_URL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@db:5432/$POSTGRES_DB"

# For external tools (like Drizzle Studio)
DATABASE_URL_EXTERNAL="postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@localhost:5432/$POSTGRES_DB"

# Create the .env file inside the app directory
echo "POSTGRES_USER=$POSTGRES_USER" > "$APP_DIR/.env"
echo "POSTGRES_PASSWORD=$POSTGRES_PASSWORD" >> "$APP_DIR/.env"
echo "POSTGRES_DB=$POSTGRES_DB" >> "$APP_DIR/.env"
echo "DATABASE_URL=$DATABASE_URL" >> "$APP_DIR/.env"
echo "DATABASE_URL_EXTERNAL=$DATABASE_URL_EXTERNAL" >> "$APP_DIR/.env"

# These are just for the demo of env vars
echo "SECRET_KEY=$SECRET_KEY" >> "$APP_DIR/.env"
echo "NEXT_PUBLIC_SAFE_KEY=$NEXT_PUBLIC_SAFE_KEY" >> "$APP_DIR/.env"

# Build and run the Docker containers from the app directory
cd $APP_DIR || exit
sudo docker-compose up --build -d

# Check if Docker Compose started correctly
if ! sudo docker-compose ps | grep "Up"; then
  echo "Docker containers failed to start. Check logs with 'docker-compose logs'."
  exit 1
fi

# Output final message
echo "Deployment complete. Your Next.js app and PostgresSQL database are now running.

The .env file has been created with the following values:
- POSTGRES_USER
- POSTGRES_PASSWORD (randomly generated)
- POSTGRES_DB
- DATABASE_URL
- DATABASE_URL_EXTERNAL
- SECRET_KEY
- NEXT_PUBLIC_SAFE_KEY"
