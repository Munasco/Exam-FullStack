# Use Nginx on Alpine as the base image
FROM nginx:alpine

# Expose port 80
EXPOSE 80

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Create a file in the working directory
RUN echo "Hello from the Docker container!" > hello.txt

RUN mkdir CopyDirectory

COPY . /app