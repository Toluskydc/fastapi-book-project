# Use official Python image
FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install system dependencies
RUN apt update && apt install -y nginx curl && rm -rf /var/lib/apt/lists/*

# Copy Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the start script
COPY start.sh /start.sh

# Make the script executable
RUN chmod +x /start.sh

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 80 8000

# Start Nginx and FastAPI
CMD ["/bin/bash", "/start.sh"]

