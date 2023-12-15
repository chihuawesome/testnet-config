# Chihuahua testnet-config

## A bunch of scripts to setup and run a chihuahua testnet.

Look in the scripts directory for different scenarios like setup, adding a node to a running testnet etc.

- If you just want to join the existing testnet look at `scripts/peer_setup`. You will also need to come to the discord to get some testnet tokens.


- To setup a new testnet from scratch including configuring validators:
1. On Node 1, Run `scripts/validator_1/1_setup_validator.sh`
2. On Node 2, Run `scripts/validator_2/scripts/1_setup_validator.sh` which will initialize the node and create an address
3. On Node 1, Add the newly created address from Node 2 to `scripts/validator_1/2_add_node_2_genesis_account.sh`
4. On Node 1, Run `scripts/validator_1/2_add_node_2_genesis_account.sh`
5. Copy `~/.chihuahuad/config/genesis.json` from Node 1 to Node 2
6. On Node 2, Run `scripts/validator_2/2_create_gentx.sh`
7. On Node 1, Run `scripts/validator_1/3_add_local_gentx.sh` 
8. Copy newly created genesis transaction from Node 2 to `~/chihuahuad/config/gentx/SOMENAME` on Node 1 
9. On Node 1, Run `scripts/validator_1/4_collect_getx.sh`
10. Copy the new gensis file to Node 2
11. Start Node 1
12. Start Node 2 with `chihuahuad start --p2p.persistent_peers="44a20dc022077fc574e700d1db25405e592b2bf8@52.52.188.228:26656"`
