# Use official Node.js LTS image
FROM node:20

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
