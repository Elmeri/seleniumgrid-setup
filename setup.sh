#!/bin/bash
set -e
# curl -o docker-compose.yml https://raw.githubusercontent.com/SeleniumHQ/docker-selenium/trunk/docker-compose-v3.yml
docker-compose up -d

cmd="$@"

# Todo: change to use different tool than jq (jq is not default on os x)
while ! curl -sSL "http://localhost:4444/wd/hub/status" 2>&1 \
        | jq -r '.value.ready' 2>&1 | grep "true" >/dev/null; do
    echo 'Waiting for the Grid'
    sleep 1
done

>&2 echo "Selenium Grid is up"
exec $cmd
echo "Opening VNCs to chrome & firefox"
open vnc://$(whoami):secret@127.0.0.1:5900
open vnc://$(whoami):secret@127.0.0.1:5901
