#!/bin/bash
cd "$(dirname "$0")"

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
