# syntax=docker/dockerfile:1
# Use an official Node.js runtime as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port Next.js will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]
