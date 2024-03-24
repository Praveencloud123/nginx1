# Use the Ubuntu base image
FROM ubuntu:latest

# Update the package lists
RUN apt-get update

# Install Nginx
RUN apt-get install -y nginx
rm -rf /var/lib/apt/lists/*

# Expose ports
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
