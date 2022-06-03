FROM node:16-alpine3.15

WORKDIR /app

COPY package.json .

RUN yarn 

COPY . .

EXPOSE 6006
# required for docker desktop port mapping

CMD ["yarn", "storybook"]