FROM node:15.13-alpine

WORKDIR /core

ENV PATH="./node_modules/.bin:$PATH"

RUN npm install
# RUN npm run build
COPY . .

RUN apk update
RUN apk add nodejs


EXPOSE 3000

CMD [ "npm", "start" ]