# Use the latest LTS (long term support) version boron of node available from
# the Docker Hub
FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Our app binds to port 8080 so we'll use the EXPOSE instruction to have it 
# mapped by the docker daemon
EXPOSE 8080

# Here we will use the basic npm start which will run node server.js to start
# our server
CMD [ "npm", "start" ]

