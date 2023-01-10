# Specify base image
FROM node:alpine

WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./ 
RUN npm install
# local directory ./ to working container directory ./
COPY ./ ./

# Setup default command
CMD ["npm", "start"]