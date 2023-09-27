#!/bin/bash
cd "$(dirname "$0")"

screen -UAmdS hub bash ./hub/boot.sh
screen -UAmdS proxy bash ./proxy/boot.sh
