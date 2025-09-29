#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker and Docker Compose
sudo apt install -y docker.io docker-compose

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Add user to docker group
sudo usermod -aG docker $USER

# Create .env file with production secrets
cat > .env << EOF
DB_USER=prod_user
DB_PASSWORD=your_secure_db_password
JWT_SECRET=your_production_jwt_secret
ENCRYPTION_KEY=your_production_encryption_key_32_chars
EOF

# Build and run containers
docker-compose -f docker-compose.prod.yml up -d --build

# Check status
docker-compose -f docker-compose.prod.yml ps

echo "Deployment completed. App should be running on port 80."