FROM node:12.18.1
  
USER node

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

COPY --chown=node package*.json ./
RUN npm install
COPY --chown=node . .

ENV HOST=0.0.0.0 PORT=3003

EXPOSE ${PORT}
CMD [ "node", "app.js" ]
