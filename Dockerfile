# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY hello.py .

# Install Flask
RUN pip install flask

# Expose port
EXPOSE 5000

# Start the application
CMD ["python", "hello.py"]
