FROM node:12.18.4-alpine3.12
ARG NPM_VERSION=latest
RUN apk add --no-cache git tini
RUN npm install -g zenn-cli@$NPM_VERSION
WORKDIR /work
ENTRYPOINT ["/sbin/tini", "--", "npx", "zenn"]
CMD ["preview"]
