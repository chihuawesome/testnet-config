#!/bin/bash

# init the node
chihuahuad init testnet-node-2 --chain-id testnet-6-0 -o

# configure gas price
sed -i.bak 's/minimum-gas-prices =.*/minimum-gas-prices = "1uhuahua"/' $HOME/.chihuahuad/config/app.toml

# add a normal user account
chihuahuad keys add validator2

# you need to add this validator address to the main genesis file so it can be used in the gentx command
