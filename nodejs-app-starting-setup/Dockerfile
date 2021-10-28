# Build on top of another image on Docker Hub  called node
FROM node

# Like cd'ing into a directory, all subsequent commands in container executed here
WORKDIR /app

# An optimisation trick to put the package install layer before any modifications to other files that might otherwise cause rebuild
COPY package.json /app

# Run a command in the image 
RUN npm install 

# Specify what files on local machine to copy into container
# Can do . . for all to all or . /app for all to directory (called app)
# Note Dockerfile will not be copied into container
COPY . /app

# Make the PORT available to outside container (optional but recommended)
EXPOSE 80

# We DON'T DO RUN node server.js because this runs the server inside the image, not the container
# Whereas RUN is an image instruction, CMD is run when a container is started
# Syntax is a bit different to RUN
# If you don't specify CDM, the CMD of base image will be run
CMD ["node", "server.js"]



