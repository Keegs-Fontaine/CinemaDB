# Use Node.js as base image
FROM node:16-slim

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    libgtk-3-0 \
    libx11-dev \
    libxcomposite-dev \
    libxrandr-dev \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

# Install Beekeeper Studio dependencies
RUN npm install -g electron

# Install Beekeeper Studio
RUN npm install beekeeper-studio

# Expose port
EXPOSE 5000

# Start the Beekeeper Studio app
CMD ["beekeeper-studio"]
