FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

WORKDIR wkspace

ADD geth /ethereum/geth
ADD genesis.json /ethereum/genesis.json
ADD start.sh /ethereum/start.sh

RUN chmod -R 777 "/ethereum/start.sh"
RUN touch "/ethereum/geth.log"
RUN chmod -R 777 "/ethereum/geth.log"

VOLUME ["/project"]

EXPOSE 7545
EXPOSE 7546
EXPOSE 30303

ENTRYPOINT ["/ethereum/start.sh"]




# 运行容器
# docker run -itd  --network=blockchain_test -p 7545:7545 -p 7546:7546 -p 30303:30303 -v /home/wangfei/blockchain/testnet-one:/project --name blockchain_testnet blockchain_testnet

# docker run -itd  --network=blockchain_test -p 8545:7545 -p 8546:7546 -p 40303:30303 -v /home/wangfei/blockchain/testnet-two:/project --name blockchain_testnet_two blockchain_testnet



