# Messenger App

A secure, real-time messenger application with modern UI and end-to-end message encryption.

## Features

- Real-time messaging with Socket.IO
- AES256 message encryption
- JWT authentication with bcrypt password hashing
- Group chats
- Message status indicators
- Modern React Native UI with dark/light themes
- Docker deployment with Nginx reverse proxy

## Setup

### Development

1. Clone the repository
2. Install backend dependencies: `npm install`
3. Install frontend dependencies: `cd frontend && npm install`
4. Copy `.env.example` to `.env` and configure
5. Start PostgreSQL database
6. Run backend: `node app.js`
7. Run frontend: `cd frontend && npx expo start --web`

### Production Deployment

1. On Ubuntu VPS, run the deploy script:
   ```bash
   chmod +x deploy.sh
   ./deploy.sh
   ```

2. Update nginx.conf with your domain
3. Configure SSL certificates for HTTPS
4. Set production environment variables in .env

## Security

- Messages are encrypted with AES256 before storage
- Passwords are hashed with bcrypt
- JWT tokens for authentication
- Nginx reverse proxy for security

## API Endpoints

- POST /auth/register - User registration
- POST /auth/login - User login
- GET /users/me - Get current user
- GET /chats - Get user's chats
- POST /chats/group - Create group chat
- GET /chats/:id/messages - Get chat messages
- POST /chats/:id/messages - Send message
- PUT /chats/messages/:id/status - Update message status