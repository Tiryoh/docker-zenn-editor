FROM node:12.18.4-alpine3.12
RUN apk add --no-cache git tini
RUN npm install -g zenn-cli@latest
WORKDIR /work
ENTRYPOINT ["/sbin/tini", "--", "npx", "zenn"]
CMD ["preview"]
