#! /bin/sh
# This is a tiny shell script that will stop all running docker containers
sudo docker kill $(sudo docker ps -q)