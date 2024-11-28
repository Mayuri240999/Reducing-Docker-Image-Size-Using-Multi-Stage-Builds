# Use a lightweight Python image
FROM python:latest

# Set the working directory in the container
WORKDIR /app


# Copy the calculator script into the container
COPY calculator.py /app/calculator.py

# Set the default command to run the Python script
ENTRYPOINT ["python", "/app/calculator.py"]
