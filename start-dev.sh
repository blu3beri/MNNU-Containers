ngrok http 3000 -log=stdout > /dev/null &

sleep 2


ENDPOINT=$(curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')

aca-py start \
    -it acapy_plugin_toolbox.http_ws 0.0.0.0 3000 \
    -ot http \
    -e http://$ENDPOINT $ENDPOINT/http/ws \
    --label "Test Agent" \
    --auto-accept-requests \
    --auto-ping-connection \
    --auto-respond-credential-proposal \
    --auto-respond-credential-offer \
    --auto-respond-credential-request \
    --auto-store-credential \
    --auto-respond-presentation-proposal \
    --auto-respond-presentation-request \
    --auto-verify-presentation \
    --preserve-exchange-records \
    --invite \
    --invite-role admin \
    --invite-label "Test Agent (admin)" \
    --genesis-url http://dev.greenlight.bcovrin.vonx.io/genesis \
    --plugin acapy_plugin_toolbox \
    --admin 0.0.0.0 3002 \
    --admin-insecure-mode \
    --debug-connections \
    --debug-credentials \
    --debug-presentations \
    --enable-undelivered-queue \
    "$@"
