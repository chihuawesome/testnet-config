#!/bin/bash

MY_NODE_NAME="mynode"

# init the node
chihuahuad init $MY_NODE_NAME --chain-id testnet-6-0 -o

# configure gas price
sed -i.bak 's/minimum-gas-prices =.*/minimum-gas-prices = "1uhuahua"/' $HOME/.chihuahuad/config/app.toml

# add a normal user account
chihuahuad keys add testnetkey

