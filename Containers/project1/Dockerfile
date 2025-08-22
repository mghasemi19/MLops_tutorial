# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of your project (including model.py)
COPY . /app

# Run model.py
CMD ["python", "model.py"]
