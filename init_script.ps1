# java
New-Item java -ItemType Directory
# java 8
Invoke-WebRequest https://objects.githubusercontent.com/github-production-release-asset-2e65be/372924428/64302593-59eb-4746-b3ca-33985e5da373?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231002%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231002T151320Z&X-Amz-Expires=300&X-Amz-Signature=1189bd44adc23154a6ef3dc6cd52476509e9bbf70648211ff895939165526fdb&X-Amz-SignedHeaders=host&actor_id=99890591&key_id=0&repo_id=372924428&response-content-disposition=attachment%3B%20filename%3DOpenJDK8U-jdk_x64_windows_hotspot_8u382b05.zip&response-content-type=application%2Foctet-stream
Expand-Archive -Path OpenJDK8U-jdk_x64_windows_hotspot_8u382b05.zip -DestinationPath java/
Remove-Item -Path OpenJDK8U-jdk_x64_windows_hotspot_8u382b05.zip
# java 16
Invoke-WebRequest "https://download.java.net/openjdk/jdk16/ri/openjdk-16+36_windows-x64_bin.zip" -O jdk-16.zip
Expand-Archive -Path jdk-16.zip -DestinationPath java/
Remove-Item -Path jdk-16.zip
# java 17
Invoke-WebRequest "https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_windows-x64_bin.zip" -O jdk-17.zip
Expand-Archive -Path jdk-17.zip -DestinationPath java/
Remove-Item -Path jdk-17.zip

# velocity server
Invoke-WebRequest https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/265/downloads/velocity-3.2.0-SNAPSHOT-265.jar -O proxy/velocity.jar
# velocity plugins
New-Item proxy/plugins -ItemType Directory
Invoke-WebRequest https://github.com/adde0109/Ambassador/releases/download/v1.4.1-beta/Ambassador-Velocity-1.4.1-all.jar -O proxy/plugins/ambassador.jar
Invoke-WebRequest https://github.com/ygtdmn/VelocityRcon/releases/download/v1.1/VelocityRcon.jar -O proxy/plugins/velocity_rcon.jar

# papermc server
Invoke-WebRequest https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -O hub/paper.jar
# papermc plugins
Invoke-WebRequest https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
Invoke-WebRequest https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
Invoke-WebRequest https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.0/ViaBackwards-4.8.0.jar -O hub/plugins/viabackwards.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaVersion/releases/download/4.8.0/ViaVersion-4.8.0.jar -O hub/plugins/viaversion.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar
