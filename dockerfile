# Use a slim Python 3.11 image as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose the port on which the app will run
EXPOSE 5000

# Define the command to run the app using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "gettingstarted:app"]
