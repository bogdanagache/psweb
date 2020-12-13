# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64

# This will effectively add a layer
FROM alpine

# This is only metadata purpose
LABEL maintainer="bmaga2003@yahoo.co.uk"

# This will effectively add a layer
# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# This will effectively add a layer
# Copy app to /src
COPY . /src

WORKDIR /src

# This will effectively add a layer
# Install dependencies
RUN  npm install

EXPOSE 8088

# Path is relative to the above defined WORKDIR
ENTRYPOINT ["node", "./app.js"]
