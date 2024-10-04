# our base image uses Python 3.12 version 
FROM python:3.12-alpine

#  installation of curl to use curl function
RUN apk add --no-cache curl
# destination directory set
RUN mkdir -p /var/jenkins_home/plugins
# runs the sonar plugin in Jenkins directory
RUN curl -L -o /var/jenkins_home/plugins/sonar-cloud.hpi https://github.com/SonarSource/sonar-cloud-plugin/releases/latest/download/sonar-cloud.hpi
  
# Create the destination directory in the container
RUN mkdir -p /app/templates

COPY templates/ /app/templates/
# Copies local diretory files from templates to the file directory created by Docker builds
# COPY templates/ /app/templates/

# To create a working directory for the container to execute file
WORKDIR /app/templates

# run the application
CMD ["python", "-m", "http.server", "5000"]

