#!/bin/bash
cd "$(dirname "$0")"
cd ../
exec java/jdk-16.0.2+7/bin/java -jar @user_jvm_args.txt paper.jar nogui
