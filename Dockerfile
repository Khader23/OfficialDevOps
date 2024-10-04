 # our base image
FROM python:3.12-alpine
  
# Create the destination directory in the container
RUN mkdir -p /app/templates

# Copies local diretory files from templates to the file directory created by Docker builds
COPY templates/ /app/templates/

# To create a working directory for the container to execute file
WORKDIR /app/templates

# run the application
CMD ["python", "-m", "http.server", "5000"]

