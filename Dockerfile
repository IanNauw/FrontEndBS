FROM node:19-alpine3.15
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH


COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
EXPOSE 3000

COPY . ./


CMD ["npm", "start"]