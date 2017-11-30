FROM node:latest
MAINTAINER tribou

# Prepare app directory
RUN mkdir -p /usr/src/app
ADD . /usr/src/app

# Install dependencies
WORKDIR /usr/src/app
RUN npm install

# Expose the app port
EXPOSE 3000

# Start the app
ENTRYPOINT ["npm","start"]