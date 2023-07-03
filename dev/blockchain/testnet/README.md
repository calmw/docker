#### 创建容器

- ``` docker build -t="blockchain_testnet" . ```

#### 创建网络

- ``` docker network create blockchain_test ```

- 查看网络 ``` docker network inspect blockchain_test ```

#### 创建容器

- 节点一：
  ``` docker run -itd --network=blockchain_test -p 7545:7545 -p 7546:7546 -p 30303:30303 -v /home/wangfei/blockchain/testnet-one:/project --name blockchain_testnet_one blockchain_testnet ```

- 节点二：
  ``` docker run -itd --network=blockchain_test -p 8545:7545 -p 8546:7546 -p 40303:30303 -v /home/wangfei/blockchain/testnet-two:/project --name blockchain_testnet_two blockchain_testnet ```

#### 启动节点

- ``` docker exec -it blockchain_testnet_one /bin/bash ```

#### 节点操作

1. 添加节点
2. 启动挖矿

#### 节点操作命令

- 获取当前节点的enode ``` admin.nodeInfo.enode ```
- 查看节点 ``` admin.peers ```
- 添加节点 ``` admin.addPeer("url") ```

- 查看账户余额 ``` eth.getBalance(eth.accounts[0]) ```
-
- 挖矿 ``` miner.start(2) miner.stop() ``` start中参数为线程数
- 设定节点中的第一个账户为挖矿账户 ``` miner.setEtherbase(eth.accounts[0]) ```


