#!/bin/bash
cd "$(dirname "$0")"
cd ../
screen -UAmdS velocity java/jdk-17.0.8+7/bin/java -jar -Xmx512M -Xms512M velocity.jar nogui
