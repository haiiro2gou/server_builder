#!/bin/bash
cd "$(dirname "$0")"
cd ../
exec java/jdk-17.0.8+7/bin/java -jar @user_jvm_args.txt velocity.jar nogui
