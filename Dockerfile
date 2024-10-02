 # our base image
FROM python:3.12-alpine
#  installation of curl to use curl function
RUN apk add --no-cache curl
# destination directory set
RUN mkdir -p /var/jenkins_home/plugins

RUN curl -L -o /var/jenkins_home/plugins/sonar-cloud.hpi https://github.com/SonarSource/sonar-cloud-plugin/releases/latest/download/sonar-cloud.hpi

# Create the destination directory in the container
RUN mkdir -p /app/templates
# copy files required for the web application to run
COPY myindex.html /app/templates/
COPY templates /app/templates/

# To create a working directory for the container to execute file
WORKDIR /app/templates


# tell the port number the container should expose
EXPOSE 5000

# The python script is copied and sent to the /app/templates/
COPY favourite_arts.py /app/templates/
# run the application
CMD ["python", "favourite_arts.py"]

