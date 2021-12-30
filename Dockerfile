FROM node:17-alpine

ENV NODE_ENV=development

WORKDIR /app

COPY package*.json ./
RUN yarn
# --production --silent
# && mv node_modules ../
COPY . /app

EXPOSE 3000

# RUN chown -R node /app
# USER node

CMD ["yarn", "start"]
