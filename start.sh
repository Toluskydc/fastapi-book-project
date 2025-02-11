#!/bin/bash
set -e  # Stop script if any command fails

echo "Starting FastAPI..."
uvicorn main:app --host 0.0.0.0 --port 8000 --proxy-headers &

echo "Starting Nginx..."
exec nginx -g "daemon off;"
