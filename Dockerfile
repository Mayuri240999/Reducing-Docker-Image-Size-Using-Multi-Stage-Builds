FROM python:3.11-alpine as builder

# Set the working directory
WORKDIR /app

# Copy the Python script to the container
COPY calculator.py .

# Stage 2: Minimal runtime stage using scratch
FROM scratch

# Add essential components for the Python runtime
COPY --from=builder /usr/local /usr/local
COPY --from=builder /lib /lib
COPY --from=builder /etc /etc

# Add the compiled Python script
COPY --from=builder /app /app

# Set the working directory in the final image
WORKDIR /app

# Define the default command to run the Python application
ENTRYPOINT ["/usr/local/bin/python", "/app/calculator.py"]
