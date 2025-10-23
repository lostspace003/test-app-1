# Use an official image
FROM node:20-alpine

# Set Working Directory
WORKDIR /app

# Copy the package file and also install dependencies
COPY package*.json
RUN npm install

# Copy the rest of the app files
COPY . .

# Build the node.js app
RUN npm run build

# Expose the app port 
EXPOSE 3000

# Command to run the node.js app
CMD ["npm", "start"]






