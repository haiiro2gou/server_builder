#!/bin/bash
cd "$(dirname "$0")"
exec ../java/jdk-16/bin/java -jar @user_jvm_args.txt paper.jar nogui
