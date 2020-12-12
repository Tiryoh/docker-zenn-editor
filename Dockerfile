FROM node:12.20.0-alpine3.11
ARG NPM_VERSION=latest
RUN apk add --no-cache git tini
RUN npm install -g --unsafe-perm zenn-cli@$NPM_VERSION
WORKDIR /work
ENTRYPOINT ["/sbin/tini", "--", "npx", "zenn"]
CMD ["preview"]
