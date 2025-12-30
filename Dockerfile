# Base image with Python
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire project
COPY . .

# Expose port (optional – useful if later you add API)
EXPOSE 8888

# Default command
CMD ["python", "-c", "print('Docker image for ViT model is ready')"]
