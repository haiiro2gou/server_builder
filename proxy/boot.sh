#!/bin/bash
cd "$(dirname "$0")"
exec java -jar @user_jvm_args.txt velocity.jar nogui
