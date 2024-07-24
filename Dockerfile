# Use a lightweight Node.js image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . .

# Install any dependencies if required (not needed for static files)

# Expose port 80
EXPOSE 80

# Command to run when the container starts
CMD ["npx", "http-server", "-p", "80"]
