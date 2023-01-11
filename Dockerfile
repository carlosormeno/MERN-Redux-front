FROM node:18

RUN mkdir -p /usr/src/app/front

WORKDIR /usr/src/app/front

COPY package*.json ./

ENV NODE_ENV=development
ENV PORT=3000
ENV MONGO_URI=mongodb://192.168.169.133:27017/mern-stack
ENV JWT_SECRET=abc123

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm","start"]
