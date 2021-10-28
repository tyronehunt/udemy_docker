FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install 

COPY . /app

# Better to add ARG and ENV as late as possible to void repeating npm install etc. all the time
ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME ["/app/feedback"] - only if creating anonymous volume

# CMD ["node", "server.js"] - command without nodemon
CMD ["npm", "start"]