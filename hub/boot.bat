@echo off
title Universal Hub
"../java/jdk-16/bin/java.exe" -jar @user_jvm_args.txt paper.jar nogui
exit
