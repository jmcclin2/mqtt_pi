#!/bin/sh

echo "Passed filename:$1"
echo "Passed path:$2"

PROG_PATH=$2
PROG_NAME=$1

echo "Script executed from: ${PWD}"

BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

#echo "Copy program to Raspberry PI..."
#pscp -pw raspberry -scp $PROG_PATH/$PROG_NAME pi@raspberrypi:projects/$PROG_NAME

wait

echo "Make program executable and start GDB server..."
ssh pi@raspberrypi "sudo chmod +x ./projects/$PROG_NAME | sudo gdbserver localhost:2345 ./projects/$PROG_NAME"

wait

read -p "Press any key to exit" 