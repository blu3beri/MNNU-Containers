1. pip install aries-cloudagent
2. pip install git+https://github.com/hyperledger/aries-acapy-plugin-toolbox.git@master#egg=acapy-plugin-toolbox
3. aca-py start \
	-it http localhost 3000 -it ws localhost 3001 \
	-ot http \
	-e http://localhost:3000 ws://localhost:3001 \
	--plugin acapy_plugin_toolbox \
	--admin localhost 3002 \
	--admin-insecure-mode
