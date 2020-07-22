FROM node:12

#Create  app dir
WORKDIR /usr/src/app

#Install App dependecies
COPY package*.json ./

RUN npm install


COPY . .
EXPOSE 8080

CMD ["node","server.js"]