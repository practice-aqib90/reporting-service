FROM node:16.15

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
COPY package.json /usr/src/app/

# Bundle app source
COPY ./dist /usr/src/app/dist

COPY ./public /usr/src/app/public

RUN npm install
# RUN npm run build:ui

EXPOSE 3001

CMD [ "npm", "start" ]