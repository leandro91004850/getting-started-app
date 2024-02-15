FROM node:18-alpine
#RUN  addgroup dev && adduser -S -G leandro dev
#USER leandro
WORKDIR /app
COPY package.json .
RUN apk add --no-cache python3 g++ make
RUN yarn install --production
COPY . .
#ENV API_URL=https://api.leandrocorp.com.br # quando for necessário comunicar com uma api a parte
CMD ["node", "src/index.js"]
EXPOSE 3000
