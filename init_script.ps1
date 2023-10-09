# initialize
Remove-Item -Recurse -Force -Path hub/plugins
Remove-Item -Recurse -Force -Path hub/paper.jar
Remove-Item -Recurse -Force -Path proxy/plugins
Remove-Item -Recurse -Force -Path proxy/bungeecord.jar
Remove-Item -Recurse -Force -Path java

# java
New-Item java -ItemType Directory
# java 16
Invoke-WebRequest "https://download.java.net/openjdk/jdk16/ri/openjdk-16+36_windows-x64_bin.zip" -O jdk-16.zip
Expand-Archive -Path jdk-16.zip -DestinationPath java/
Remove-Item -Path jdk-16.zip
# java 17
Invoke-WebRequest "https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_windows-x64_bin.zip" -O jdk-17.zip
Expand-Archive -Path jdk-17.zip -DestinationPath java/
Remove-Item -Path jdk-17.zip

# paper server
Invoke-WebRequest https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar -O hub/paper.jar
# paper plugins
New-Item hub/plugins -ItemType Directory
Invoke-WebRequest https://cdn.modrinth.com/data/axTqSWQA/versions/gVctECs8/Advanced-Portals-0.9.3.jar -O hub/plugins/advanced_portals.jar
Invoke-WebRequest https://dev.bukkit.org/projects/holographic-displays/files/4701290/download -O hub/plugins/holographic_displays.jar
Invoke-WebRequest https://github.com/dejvokep/safe-net/releases/download/v3.8/SafeNET-3.8.jar -O hub/plugins/safenet.jar
Invoke-WebRequest https://github.com/SkinsRestorer/SkinsRestorerX/releases/download/14.2.12/SkinsRestorer.jar -O hub/plugins/skinsrestorer.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.1/ViaBackwards-4.8.1.jar -O hub/plugins/viabackwards.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaVersion/releases/download/4.8.1/ViaVersion-4.8.1.jar -O hub/plugins/viaversion.jar
Invoke-WebRequest https://github.com/ViaVersion/ViaRewind/releases/download/3.0.0/ViaRewind-3.0.0.jar -O hub/plugins/viarewind.jar

# bungeecord server
Invoke-WebRequest https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar -O proxy/bungeecord.jar
# bungeecord plugins
New-Item proxy/plugins -ItemType Directory
Invoke-WebRequest https://github.com/dejvokep/safe-net/releases/download/v3.8/SafeNET-3.8.jar -O proxy/plugins/safenet.jar
