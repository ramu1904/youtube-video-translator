# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY build/requirements.txt /app/

# Install the dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY build/ /app/

# Expose the port that Streamlit uses by default (8501)
EXPOSE 8501

# Define the command to run the Streamlit app
CMD ["streamlit", "run", "app.py"]
