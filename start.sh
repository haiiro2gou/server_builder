#!/bin/bash
cd "$(dirname "$0")"

bash ./hub/boot.sh
bash ./proxy/boot.sh
