# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React application
RUN npm run build

# Set the PORT environment variable
ENV PORT=8082

# Expose port 8082 to the outside world
EXPOSE 8082

# Define the command to run the application
CMD ["npm", "start"]

