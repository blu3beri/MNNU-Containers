#!/bin/bash

echo "starting aca-py with toolbox and admin..."
aca-py start \
	-it http localhost 3000 -it ws localhost 3001 \
	-ot http \
	-e http://localhost:3000 ws://localhost:3001 \
	--plugin acapy_plugin_toolbox \
	--genesis-url http://dev.greenlight.bcovrin.vonx.io/genesis \
	--admin localhost 3002 \
	--admin-insecure-mode \
	--auto-accept-requests \
	--auto-accept-requests --auto-ping-connection \
	--auto-respond-credential-proposal --auto-respond-credential-offer --auto-respond-credential-request --auto-store-credential \
	--auto-respond-presentation-proposal --auto-respond-presentation-request --auto-verify-presentation \
	--preserve-exchange-records \
	--invite --invite-role admin --invite-label "Test Agent (admin)" \
	--genesis-url http://dev.greenlight.bcovrin.vonx.io/genesis \
	--plugin acapy_plugin_toolbox \
	--admin 0.0.0.0 3002 --admin-insecure-mode \
	--debug-connections \
	--debug-credentials \
	--debug-presentations \
	--enable-undelivered-queue \
