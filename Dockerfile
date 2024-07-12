# Base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . .

# Copy the processed data
COPY data/processed/ENB2012_data_processed.csv /app/data/processed/ENB2012_data_processed.csv

# Run the application
CMD ["python", "src/model_training.py"]
