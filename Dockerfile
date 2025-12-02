# Use a lightweight web server image as the base
FROM nginx:alpine

# Copy our website files into the container's web directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80 (standard HTTP port)
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]