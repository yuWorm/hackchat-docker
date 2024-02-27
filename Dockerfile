FROM node:hydrogen-alpine3.19

WORKDIR /app

COPY main /app

COPY hackchat_patch/client.js  /app/client/client.js

COPY hackchat_patch/env_config.js  /app/scripts/env_config.js

COPY hackchat_patch/package.json  /app/package.json

COPY hackchat_patch/index.html  /app/client/index.html

COPY run.sh /app

RUN npm -g install pnpm && pnpm install && chmod +x /app/run.sh

EXPOSE 6060 3000

CMD [ "sh", "-c", "/app/run.sh" ]