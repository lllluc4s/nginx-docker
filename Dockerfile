#Dockerfile
# Use Alpine Linux as a base image
FROM alpine:latest

# Update and install Nginx
RUN apk update && apk upgrade && apk add --no-cache nginx

# Remove default configuration file
RUN rm /etc/nginx/http.d/default.conf
RUN rm /etc/nginx/nginx.conf

# Create a directory for the HTML file
RUN mkdir -p /usr/share/nginx/html

# Create a custom HTML page
COPY index.html /usr/share/nginx/html/index.html

# Set permissions for the HTML file
RUN chmod 644 /usr/share/nginx/html/index.html
RUN chown nginx:nginx /usr/share/nginx/html/index.html

# More Nginx configuration
RUN mkdir -p /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf
COPY myserver.conf /etc/nginx/conf.d/myserver.conf

# Expose port 80 for HTTP traffic
EXPOSE 88

# Start Nginx with the "daemon off" option
CMD ["nginx", "-g", "daemon off;"]