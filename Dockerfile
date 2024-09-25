# our base image
FROM alpine:3.5

# install Python and pip
RUN apk add --update py2-pip

# copy files required for the app to run
COPY templates/myindex.html /Users/sfkh0/PycharmProjects/Webpage Deakin/templates
COPY favourite_arts.py /Users/sfkh0/PycharmProjects/Webpage Deakin/templates/

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/Users/sfkh0/PycharmProjects/Webpage Deakin/templates/favourite_arts.py"]