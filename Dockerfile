# Base image
FROM ubuntu:22.04

# Install dependencies
RUN apt update &&
 apt install -y python3 curl wget git &&
 apt clean

# Create app dummy
WORKDIR /app
RUN echo "Docker server on Railway active" > index.html

# Expose a port (Railway requires one)
EXPOSE 8080

# Keep container alive (you can change it to your real app)
CMD ["python3", "-m", "http.server", "8080"]
