gen_ws_path() {
    # gen ws path from env 
    if [ -z "$WS_PATH" ]; then
        echo "var wsPath=':6060'" > /app/client/wsPath.js
    else
        echo "var wsPath='$WS_PATH'" > /app/client/wsPath.js
    fi
}

gen_ws_path

node scripts/env_config.js

pnpm pm2-runtime pm2.config.cjs