#!/bin/bash
python3 -m venv .env
PIICATCHER_PATH=/home/ubuntu/.env/lib/python3.6/site-packages/piicatcher
export PIICATCHER_PATH
TOKERN_PIICATCHER_PATH=/home/ubuntu/piicatcher_repo/tokern_piicatcher/piicatcher
export TOKERN_PIICATCHER_PATH
source .env/bin/activate
