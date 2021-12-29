FROM node:14.18

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4000

CMD ["npm", "start"]