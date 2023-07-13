# Fetching the latest node image on alpine linux
FROM node:alpine AS development
# Declaring env
ENV NODE_ENV development
# Setting up the work directory
WORKDIR /react-app
# Installing dependencies
COPY ./package.json /react-app
# Build the production version of the application
RUN npm install
# Copying all the files in our project
COPY . .
# Expose port 80 to the outside world
EXPOSE 80
# Starting our application
CMD npm start