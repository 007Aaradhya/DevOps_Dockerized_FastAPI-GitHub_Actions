# Use an official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Install Python, pip, and venv
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Copy the current directory contents into the container at /app
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run main.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]