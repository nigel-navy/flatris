FROM node:12

RUN mkdir /app

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn --frozen-lockfile

COPY . ./

RUN yarn build

EXPOSE 3000

CMD yarn start