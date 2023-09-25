#!/bin/bash
cd "$(dirname "$0")"
exec ../java/jdk-17.0.1/bin/java -jar @user_jvm_args.txt velocity.jar nogui
