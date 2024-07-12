# This Dockerfile is used to build a Docker image for the energy consumption prediction application.

# Use the official Python 3.8 slim base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt requirements.txt

# Install the Python dependencies specified in the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project directory to the working directory
COPY . .

# Define the command to run when the container starts
CMD ["python", "src/model_training.py"]
