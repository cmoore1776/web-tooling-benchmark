FROM node:14-alpine

RUN \
  apk update && \
  apk upgrade && \
  apk add git && \
  git clone https://github.com/v8/web-tooling-benchmark.git && \
  cd web-tooling-benchmark && \
  npm i && \
  npm run build:terser-bundled && \
  npm run build:uglify-js-bundled && \
  npm run build && \
  rm -rf /var/cache/apk/*

WORKDIR /web-tooling-benchmark

ENTRYPOINT [ "node" ]

CMD [ "dist/cli.js" ]