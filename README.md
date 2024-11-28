# Reducing-Docker-Image-Size-Using-Multi-Stage-Builds
 The main purpose of using Multi-stage-builds is to reduce the size of our docker image, as reducing the size of the image minimizes the time required for the docker build process smaller images consume less disk space by excluding unneeded utilities and libraries, you mitigate the risk of security exploits containers created from smaller images start faster, improving response times in dynamic environments smaller images reduce storage costs when hosted in cloud registries or private repositories.

### Python Application
  This image contains a lightweight Python-based calculator application, built using a multi-stage Docker process to optimize image size and efficiency. The final Docker image uses `scratch` as the distrolate image, ensuring a minimal and secure runtime environment.

### Docker Implementation
This project uses a multi-stage Docker build to reduce the image size:
1. Build Stage: A Python base image (python:3.11-alpine) is used to install dependencies and prepare the application.
2. Runtime Stage: The scratch image is used to create a minimal, secure, and lightweight runtime environment by copying only the necessary files and dependencies from the build stage.

### Commands
### Build the Docker Image
```
docker build -t multistage-build .
```
### Show Docker Images
```
docker images
```
### Run the Docker container
```
docker run -it multistage-build bash
```





![Screenshot 2024-11-28 192501](https://github.com/user-attachments/assets/fbbc0045-5be2-467a-8def-b29b11dc9abc)

