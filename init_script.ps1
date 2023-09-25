# java
New-Item java -ItemType Directory
# java 16
Invoke-WebRequest -c "https://download.java.net/openjdk/jdk16/ri/openjdk-16+36_windows-x64_bin.zip" -O jdk-16.zip
Expand-Archive -Path jdk-16.zip -DestinationPath java/
Remove-Item -Path jdk-16.zip
# java 17
Invoke-WebRequest -c "https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_windows-x64_bin.zip" -O jdk-17.zip
Expand-Archive -Path jdk-17.zip -DestinationPath java/
Remove-Item -Path jdk-17.zip

# velocity server
Invoke-WebRequest -c https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/265/downloads/velocity-3.2.0-SNAPSHOT-265.jar -O proxy/velocity.jar
# velocity plugins
Invoke-WebRequest -c https://github.com/adde0109/Ambassador/releases/download/v1.4.1-beta/Ambassador-Velocity-1.4.1-all.jar -O proxy/plugins/ambassador.jar

# papermc server
Invoke-WebRequest -c https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -O hub/paper.jar
# papermc plugins
Invoke-WebRequest -c https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
Invoke-WebRequest -c https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
Invoke-WebRequest -c https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
Invoke-WebRequest -c https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.0/ViaBackwards-4.8.0.jar -O hub/plugins/viabackwards.jar
Invoke-WebRequest -c https://github.com/ViaVersion/ViaVersion/releases/download/4.8.0/ViaVersion-4.8.0.jar -O hub/plugins/viaversion.jar
Invoke-WebRequest -c https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar
