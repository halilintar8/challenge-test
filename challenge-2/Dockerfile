# Use the official Nginx base image
FROM nginx

# Copy custom nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the website files to the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

