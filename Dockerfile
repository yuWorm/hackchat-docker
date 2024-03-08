FROM node

WORKDIR /app

COPY . /app

RUN cp /app/hackchat_patch/client.js /app/main/client/ \
    && cp /app/hackchat_patch/index.html /app/main/client/ \
    && cp /app/hackchat_patch/env_config.js /app/main/scripts/ \
    && cp /app/hackchat_patch/package.json /app/main/ \
    && cd /app/main && npm -g install pnpm && pnpm install


EXPOSE 6060 3000

CMD [ "sh", "-c", "/app/run.sh" ]