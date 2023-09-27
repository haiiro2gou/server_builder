#!/bin/bash
cd "$(dirname "$0")"

mkdir -p /ramdisk/minecraft/hub/world/
cp -rp world_cache/* /ramdisk/minecraft/hub/world/

screen -UAmdS paper ../java/jdk-16.0.2+7/bin/java -jar -Xmx2G -Xms1G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=100 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=50 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:TargetSurvivorRatio=90 paper.jar nogui

rsync -av --delete /ramdisk/minecraft/hub/world/ world_cache/
