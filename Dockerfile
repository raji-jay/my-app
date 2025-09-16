# Use lightweight Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY package*.json ./
RUN npm ci --only=production

# Copy all app files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
