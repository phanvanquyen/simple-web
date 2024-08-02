# Use the official Nginx image as the base image
FROM nginx

# Copy the index.html file to the default Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]