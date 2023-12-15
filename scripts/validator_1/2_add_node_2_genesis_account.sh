#!/bin/bash

# This adds it to the genesis file you must create this first
NODE2_ADDRESS="chihuahua1spdjzdsz2utqgwmpmctz63adcyyt6utv7aklwl"

# fund account for node 2  
chihuahuad genesis add-genesis-account $NODE2_ADDRESS 1000000000stake,10000000000huahua
