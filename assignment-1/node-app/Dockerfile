FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["node", "server.js"]

# CREATE node-app IMAGE (cd into folder)
# docker build -t node-demo:v1 .

# CREATE container (don't need to cd into folder!)
# docker run -p 8000:3000 -d --name mynodeapp --rm mode-demo:v1
# docker stop mynodeapp