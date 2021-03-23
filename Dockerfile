FROM node:13-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
RUN npm install pm2 -g

COPY . .

EXPOSE 80

#CMD node index.js
CMD [ "pm2-runtime", "npm", "--", "start" ]