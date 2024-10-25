FROM node:20-alpine
WORKDIR /app
EXPOSE 3000

COPY package.json ./
COPY tsconfig.json ./
COPY yarn.lock ./
COPY src ./src

RUN npm install
RUN npm run build

CMD ["npm", "start"]
