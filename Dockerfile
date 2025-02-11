# Use official Python image
FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install system dependencies
RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose FastAPI port
EXPOSE 8000

# Start FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--proxy-headers"]

