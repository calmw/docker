#### docker 启动

- 1 去docker hub拉取官方镜像
- 2 执行命令：

``` shell
cd blockscout/docker \
COIN=ETH \
ETHEREUM_JSONRPC_VARIANT=geth \
ETHEREUM_JSONRPC_HTTP_URL=http://127.0.0.1:7545 \
ETHEREUM_JSONRPC_WS_URL=ws://127.0.0.1:7546 \
BLOCK_TRANSFORMER=base \
NETWORK=Ethereum \
SUBNETWORK=ETH \
make start
```
- 如果需要指定PostgresSQL，增加环境变量：
``` shell
cd blockscout/docker \
COIN=ETH \
ETHEREUM_JSONRPC_VARIANT=geth \
ETHEREUM_JSONRPC_HTTP_URL=http://127.0.0.1:7545 \
ETHEREUM_JSONRPC_WS_URL=ws://127.0.0.1:7546 \
DATABASE_URL=postgresql://postgres:@127.0.0.1:5433/blockscout?ssl=false \
DB_URL=postgresql://postgres:@127.0.0.1:5433/blockscout?ssl=false \
BLOCK_TRANSFORMER=base \
NETWORK=Ethereum \
SUBNETWORK=ETH \
make start
```


  