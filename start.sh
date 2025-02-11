#!/bin/bash
set -e  # Exit immediately if any command fails

echo "Starting Nginx..."
service nginx start

echo "Starting FastAPI..."
exec uvicorn main:app --host 0.0.0.0 --port 8000 --proxy-headers
