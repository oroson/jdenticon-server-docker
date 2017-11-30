FROM node:8

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY server.js server.js

RUN npm install --only=production
EXPOSE 8080

CMD [ "npm", "start" ]


