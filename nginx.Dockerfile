# Use official Nginx image
FROM nginx:latest

# Copy your custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for external traffic
EXPOSE 80
