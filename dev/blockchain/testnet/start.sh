#!/bin/bash

/ethereum/geth --nodiscover --identity "TestNet" --networkid 7000 --datadir "/project/node_data" --allow-insecure-unlock --gcmode=archive --mine --miner.threads=1 --miner.etherbase=0xef83be706597Dd409e49ed488F3e23cEB98Dc495 --http --http.addr 0.0.0.0 --http.port 7545 --http.corsdomain "*" --ws --ws.addr 0.0.0.0 --ws.port 7546 --ws.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --http.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --ws.origins "*" >> /ethereum/geth.log 2>&1


#/ethereum/geth --allow-insecure-unlock  --unlock=0 --nodiscover --password  "/ethereum/password"  --networkid  7000  --datadir  "/project/node_data"  --http --http.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --http.corsdomain="*" --http.port=7545 --http.addr="0.0.0.0"  --ws --ws.addr "0.0.0.0" --ws.port=7546 --ws.origins "*" --ws.api "admin,debug,web3,eth,txpool,personal,ethash,miner,net" --syncmode full console
