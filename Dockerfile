# Use official Node image
FROM node:18-alpine

# Create app dir
WORKDIR /app

# Copy and install deps
COPY package.json package-lock.json* ./
RUN npm ci --only=production

# Copy app files
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]

