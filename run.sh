rename_code_dir(){
    code_dir="/app/code"
    if [ ! -d $code_dir ]; then
        mv /app/main $code_dir
    fi
}

# Solve the problem that node_modules and code are no longer on the same level
rename_code_dir

gen_ws_path() {
    # gen ws path from env 
    if [ -z "$WS_PATH" ]; then
        echo "var wsPath=':6060'" > /app/code/client/wsPath.js
    else
        echo "var wsPath='$WS_PATH'" > /app/code/client/wsPath.js
    fi
}

gen_ws_path


pnpm --prefix /app/code run env_config

pnpm --prefix /app/code run start_wait