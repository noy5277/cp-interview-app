FROM node:25.8.1-alpine3.23 as base

WORKDIR /app

COPY app  ./

From base as build

RUN npm init -y

FROM node:25.8.1-alpine3.23 as runtime

USER node

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/local/bin

COPY --from=build /app ./

EXPOSE 3000
CMD ["node", "index.js"]
