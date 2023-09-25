#!/bin/bash
scriptDir = $(cd $(dirname $0) && pwd)

bash ./hub/boot.sh
bash ./proxy/boot.sh
