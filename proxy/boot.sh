#!/bin/bash
cd "$(dirname "$0")"
cd ../
java/jdk-17.0.8+7/bin/java -jar -Xmx512M -Xms512M proxy/velocity.jar nogui
