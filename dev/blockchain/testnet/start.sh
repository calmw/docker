#!/bin/bash

/ethereum/geth --allow-insecure-unlock  --unlock=0 --nodiscover --password  "/ethereum/password"  --networkid  7000  --datadir  "/project/node_data"  --http --http.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --http.corsdomain="*" --http.port=7545 --http.addr="0.0.0.0"  --ws --ws.addr "0.0.0.0" --ws.port=7546 --ws.origins "*" --ws.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --syncmode full console
