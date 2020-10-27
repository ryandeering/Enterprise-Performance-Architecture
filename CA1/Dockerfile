FROM python:3.9

#Pulls image from https://hub.docker.com/_/python to use as a basis for the container.

COPY index.html /

#Copies the file, index.html from the same directory as the Dockerfile to the root directory of the container.


CMD python3 -m http.server 8080

#The command instruction pipes a terminal command into the container, in this case using Python 3 to
#start a small HTTP server from the module HTTP. In this case, it's starting on HTTP port 8080.
#It creates and listens at the HTTP socket, dispatching the requests to a handler.
#The module is from the Python 3 standard library, hence it's inclusion. 


