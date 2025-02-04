FROM node:alpine
WORKDIR /app/node
COPY package*.json .

RUN apt update && apt upgrade -y \
    npm install

COPY index.js .
EXPOSE 3333

CMD ["npm", "start"]
