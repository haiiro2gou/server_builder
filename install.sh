#!/bin/bash
cd "$(dirname "$0")"
mkdir java

# java 16
wget https://download.java.net/java/GA/jdk16/7863447f0ab643c585b9bdebf67c69db/36/GPL/openjdk-16_linux-x64_bin.tar.gz
tar xvf openjdk-16_linux-x64_bin.tar.gz
sudo mv jdk-16 java/
# java 17
wget https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz
tar xvf openjdk-17.0.1_linux-x64_bin.tar.gz
sudo mv jdk-17.0.1 java/

# velocity server
wget https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/265/downloads/velocity-3.2.0-SNAPSHOT-265.jar -O proxy/velocity.jar
# velocity plugins
wget https://github.com/adde0109/Ambassador/releases/download/v1.4.1-beta/Ambassador-Velocity-1.4.1-all.jar -O proxy/plugins/ambassador.jar

# papermc server
wget https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -O hub/paper.jar
# papermc plugins
wget https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
wget https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
wget https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
wget https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.0/ViaBackwards-4.8.0.jar -O hub/plugins/viabackwards.jar
wget https://github.com/ViaVersion/ViaVersion/releases/download/4.8.0/ViaVersion-4.8.0.jar -O hub/plugins/viaversion.jar
wget https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar
