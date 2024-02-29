# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install --unsafe-perm=true --allow-root

# Copy the rest of the application code
COPY . .

# Specify the command to run your application using nodemon directly
CMD ["node_modules/.bin/nodemon", "app.js"]
