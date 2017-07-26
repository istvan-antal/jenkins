#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

if [ ! -f jenkins.pid ]; then
    echo "Jenkins is not running."
    exit 1
fi

kill "$(cat jenkins.pid)"
rm jenkins.pid