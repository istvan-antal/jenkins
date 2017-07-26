#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
export JENKINS_HOME="./data"

if [ ! -f ./jenkins.war ]; then
    curl -LO http://mirrors.jenkins.io/war-stable/latest/jenkins.war
fi

if [ ! -d ./data ]; then
    mkdir ./data
fi

nohup java -jar jenkins.war &> jenkins.log &
echo "$!" > jenkins.pid