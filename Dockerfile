ARG NODE_VERSION=14
FROM node:${NODE_VERSION}-alpine
WORKDIR /application
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start
