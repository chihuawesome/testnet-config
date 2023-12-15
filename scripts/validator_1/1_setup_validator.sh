#!/bin/bash

# careful now...
# rm -rf ~/.chihuahuad/

# init the node
chihuahuad init testnet-node-1 --chain-id testnet-6-0 -o

# configure gas price
sed -i.bak 's/minimum-gas-prices =.*/minimum-gas-prices = "1uhuahua"/' $HOME/.chihuahuad/config/app.toml

# add a normal user account
chihuahuad keys add user1

# add a validator account
chihuahuad keys add validator1

# fund the user account with some tokens
chihuahuad genesis add-genesis-account $(chihuahuad keys show user1 -a) 1000000000stake,10000000000huahua

# fund the validator account with some tokens
chihuahuad genesis add-genesis-account $(chihuahuad keys show validator1 -a) 1000000000stake,10000000000huahua

# Now we need to create node 2 and get an account for it