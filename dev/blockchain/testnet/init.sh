#!/bin/bash

/ethereum/geth --datadir "/project/node_data" --networkid 7000 --http.port 7545 --identity "TestNet" init /ethereum/genesis.json &&
/ethereum/geth --datadir "/project/node_data" account new

