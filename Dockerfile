FROM node:17-alpine

WORKDIR /app

RUN npm install express

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000
# required for docker desktop port mapping

CMD ["node", "app.js"]