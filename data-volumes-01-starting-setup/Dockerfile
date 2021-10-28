FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install 

COPY . /app

EXPOSE 80

# VOLUME ["/app/feedback"] - only if creating anonymous volume

CMD ["node", "server.js"]