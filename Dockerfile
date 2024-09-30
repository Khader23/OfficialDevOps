<<<<<<< HEAD
# our base image
=======
 # our base image
>>>>>>> origin/main
FROM python:3.12-alpine

# Create the destination directory in the container
RUN mkdir -p /app/templates
# copy files required for the app to run
COPY myindex.html /app/templates/
COPY templates /app/templates/

# tell the port number the container should expose
EXPOSE 5000

# run the application
<<<<<<< HEAD
CMD ["python", "/app/templates/favourite_arts.py"]
=======
CMD ["python", "/app/templates/favourite_arts.py"]
>>>>>>> origin/main
