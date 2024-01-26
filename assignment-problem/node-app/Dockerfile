FROM node

WORKDIR /node

COPY package.json /node

RUN npm install

COPY . /node/

EXPOSE 3000

CMD ["node", "server.js"]