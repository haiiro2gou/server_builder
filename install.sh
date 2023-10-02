#!/bin/bash
cd "$(dirname "$0")"
mkdir java

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

# velocity server
wget -c https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/265/downloads/velocity-3.2.0-SNAPSHOT-265.jar -O proxy/velocity.jar
# velocity plugins
wget -c https://github.com/adde0109/Ambassador/releases/download/v1.4.1-beta/Ambassador-Velocity-1.4.1-all.jar -O proxy/plugins/ambassador.jar
wget -c https://github.com/ygtdmn/VelocityRcon/releases/download/v1.1/VelocityRcon.jar -O proxy/plugins/velocity_rcon.jar

# papermc server
wget -c https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -O hub/paper.jar
# papermc plugins
wget -c https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
wget -c https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
wget -c https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
wget -c https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.0/ViaBackwards-4.8.0.jar -O hub/plugins/viabackwards.jar
wget -c https://github.com/ViaVersion/ViaVersion/releases/download/4.8.0/ViaVersion-4.8.0.jar -O hub/plugins/viaversion.jar
wget -c https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar
