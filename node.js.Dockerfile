# Use the official Node.js image as the base image
FROM node:14-alpine
# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install -g nodemon
 

# Copy the rest of the application code to the container
COPY . .

# Start the Node.js application
CMD ["npm", "start"]



