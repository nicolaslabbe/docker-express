FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY ./src /usr/src/app/src
COPY ./tasks /usr/src/app/tasks
COPY ./package.json /usr/src/app

# build app
RUN npm install

EXPOSE 8000

CMD [ "npm", "run", "nodemon" ]