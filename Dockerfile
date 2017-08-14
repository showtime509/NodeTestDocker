FROM node

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service

# Bundle app source
COPY . /home/Service
RUN cd /home/Service; npm install

EXPOSE 8080
CMD [ "node", "/home/Service/server.js" ]
