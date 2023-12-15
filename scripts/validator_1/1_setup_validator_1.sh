#!/bin/bash

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

# fund account for node 2 - must be created first
chihuahuad genesis add-genesis-account chihuahua1cgwvelnewq5ugdu9yw5tedd6rn9ngfj5vssx8c 1000000000stake,10000000000huahua

# fund account for local/laptop - must be created first
chihuahuad genesis add-genesis-account chihuahua1apf6685wrsdse9ag9vh39md0eqdn5wuaeerxgm 1000000000stake,10000000000huahua

# add create gentx for validator1 - this machine
chihuahuad genesis gentx validator1 900000000stake --chain-id testnet-6-0

# run gentx on other nodes if needed
# see subsequent scripts