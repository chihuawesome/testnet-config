#!/bin/bash

# init the node
chihuahuad init testnet-node-2 --chain-id testnet-6-0 -o

# configure gas price
sed -i.bak 's/minimum-gas-prices =.*/minimum-gas-prices = "1uhuahua"/' $HOME/.chihuahuad/config/app.toml

# add a normal user account
chihuahuad keys add validator2

# On node 2 - use corredponding key
chihuahuad genesis gentx validator2 900000000stake --chain-id testnet-6-0
