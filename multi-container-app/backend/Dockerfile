FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . . 

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["npm", "start"]

# docker build -t goals-node .
# docker run --name goals-backend --rm -d -p 80:80 goals-node