FROM node:carbon

#Create app directory
WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install  -y nodejs npm && \
    npm -g install jdenticon && \
    mkdir /tmp/oroson-indenticon-cache

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --only=production
EXPOSE 8090

CMD [ "npm", "start" ]


