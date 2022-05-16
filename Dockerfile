FROM node:18-alpine3.14

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5000

CMD ["node", "index.js"]