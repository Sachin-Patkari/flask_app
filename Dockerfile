# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Make sure pip is installed and upgraded
RUN python -m ensurepip
RUN python -m pip install --upgrade pip

# Install dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Expose Flask port
EXPOSE 5000

# Run Flask
CMD ["python", "app.py"]
