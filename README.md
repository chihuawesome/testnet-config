# Chihuahua testnet-config

## A bunch of scripts to setup and run a chihuahua testnet circa now.

Look in the scripts directory for different scenarios like setup, adding a node to a running testnet etc.

1. Run `scripts/validator_1/1_setup_validator.sh` on Node 1
2. Run `scripts/validator_2/scripts/1_setup_validator.sh` on Node 2
3. Get address from node 2 and add it to the `scripts/validator_1/2_add_node_2_genesis_account.sh`
4. Run `scripts/validator_1/2_add_node_2_genesis_account.sh`