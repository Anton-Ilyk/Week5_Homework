FROM node:alpine

WORKDIR /usr/app
COPY ./ /usr/app

RUN apk add --update nodejs npm 
RUN npm install express nodemon mongoose body-parser dotenv joi bcryptjs jsonwebtoken

EXPOSE 3001
ENTRYPOINT ["node", "./app.js"
