#!/bin/bash

echo "starting aca-py with toolbox and admin..."
aca-py start \
	-it http localhost 3000 -it ws localhost 3001 \
	-ot http \
	-e http://localhost:3000 ws://localhost:3001 \
	--plugin acapy_plugin_toolbox \
	--genesis-url http://dev.greenlight.bcovrin.vonx.io/genesis \
	--admin localhost 3002 \
	--admin-insecure-mode

