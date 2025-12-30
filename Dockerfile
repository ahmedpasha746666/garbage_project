# Base image
FROM python:3.10-slim

# Install system dependencies required by Pillow & Torch
RUN apt-get update && apt-get install -y \
    build-essential \
    libjpeg-dev \
    zlib1g-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Upgrade pip
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port (optional)
EXPOSE 8888

# Default command
CMD ["python", "-c", "print('Docker image for ViT model is ready')"]
