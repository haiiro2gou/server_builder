#!/bin/bash
cd "$(dirname "$0")"
mkdir java

# initialize
sudo rm -r hub/plugins
sudo rm -r hub/paper.jar
sudo rm -r java
sudo rm -r proxy/plugins
sudo rm -r proxy/bungeecord.jar

# java
sudo mkdir -p java 
# java 8
wget -c https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u352-b08/OpenJDK8U-jdk_aarch64_linux_hotspot_8u352b08.tar.gz
tar xvf OpenJDK8U-jdk_aarch64_linux_hotspot_8u352b08.tar.gz
sudo mv jdk8u352-b08 java/
# java 16
wget -c https://download.visualstudio.microsoft.com/download/pr/47631081-c93a-4629-be38-bec6fced2c35/84d7a8cd3efb467f991207d3961f65ae/microsoft-jdk-16.0.2.7.1-linux-aarch64.tar.gz
tar xvf microsoft-jdk-16.0.2.7.1-linux-aarch64.tar.gz
sudo mv jdk-16.0.2+7 java/
# java 17
wget -c https://download.visualstudio.microsoft.com/download/pr/275adff5-46c9-4a3a-93d5-2bc5b46ee4d9/43e63779f74ca5587603a06b8692b62c/microsoft-jdk-17.0.8-linux-aarch64.tar.gz
tar xvf microsoft-jdk-17.0.8-linux-aarch64.tar.gz
sudo mv jdk-17.0.8+7 java/

# papermc server
wget -c https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar -O hub/paper.jar
# papermc plugins
sudo mkdir -p hub/plugins
wget -c https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
wget -c "https://www.patreon.com/file?h=89830486&i=15920178" -O hub/plugins/coreprotect.jar
wget -c https://github.com/DiscordSRV/DiscordSRV/releases/download/v1.26.2/DiscordSRV-Build-1.26.2.jar -o hub/plugins/discordsrv.jar
wget -c https://github.com/IntellectualSites/FastAsyncWorldEdit/releases/download/2.8.1/FastAsyncWorldEdit-Bukkit-2.8.1.jar -o hub/plugins/fawe.jar
wget -c https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
wget -c https://github.com/zDevelopers/ImageOnMap/releases/download/v4.2.2/ImageOnMap-4.2.2.jar -o hub/plugins/imageonmap.jar
wget -c https://download.luckperms.net/1517/bungee/loader/LuckPerms-Bungee-5.4.104.jar -O hub/plugins/luckperms.jar
wget -c https://github.com/dejvokep/safe-net/releases/download/v3.8/SafeNET-3.8.jar -O hub/plugins/safenet.jar
wget -c https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
wget -c https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.1/ViaBackwards-4.8.1.jar -O hub/plugins/viabackwards.jar
wget -c https://github.com/ViaVersion/ViaVersion/releases/download/4.8.1/ViaVersion-4.8.1.jar -O hub/plugins/viaversion.jar
wget -c https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar

# bungeecord server
wget -c https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar -O proxy/bungeecord.jar
# bungeecord plugins
sudo mkdir -p proxy/plugins
wget -c https://download.luckperms.net/1517/bungee/loader/LuckPerms-Bungee-5.4.104.jar -O proxy/plugins/luckperms.jar
wget -c https://github.com/dejvokep/safe-net/releases/download/v3.8/SafeNET-3.8.jar -O proxy/plugins/safenet.jar
