# Simple test Dockerfile
FROM alpine:latest

# Install a simple web server
RUN apk add --no-cache nginx

# Create a simple HTML page
RUN echo '<!DOCTYPE html><html><head><title>Docker Test</title></head><body><h1>Hello from Docker Fly!</h1><p>This is a test image built and pushed to JFrog Fly.</p></body></html>' > /var/www/localhost/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
