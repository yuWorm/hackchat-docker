# hackchat-docker

docker image of hackchat

How to use?

```shell
docker push yuworm/hackchat:tagname 
docker run --name hackchat -d --restart=unless-stoped -p 3000:3000 -p 6060:6060 yuworm/hackchat:tagname
```

Export ports:

`3000`: web port

`6060`: websocket port

Env Settings:

`NEED_CERT`: Whether to generate cert, bool, default is `true`

`NEED_TRIP_SALT`: Whether to generate slat, bool, default is `true`

`ADMIN_PASSWORD`: hackchat manage password, string, default is `123456`

`CHANNELS`: Default public channels, string, input format: `channel_name1$channel_name2`, default is `''`

`SET_PUBLIC_CHANNELS`: Whether to generate a public channels, default is `true`

`WS_PATH`: Set the websocket address of the front-end connection, default is `:6060`. if you changed the port during the server config, change `WS_PATH`,  to the new port (example:  `:8080`), if you are reverse proxying, change `WS_PATH` to the new location (example: `/chat-ws`)

