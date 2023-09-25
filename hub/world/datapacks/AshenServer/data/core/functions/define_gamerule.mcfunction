#> core:define_gamerule
#
# gameruleを定義します
#
# @within function core:load_once

gamerule announceAdvancements true
gamerule commandBlockOutput true
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn false
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule forgiveDeadPlayers true
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 2147483647
gamerule maxEntityCramming 0
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
execute if data storage global {IsProduction:1b} run gamerule reducedDebugInfo true
execute if data storage global {IsProduction:0b} run gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule universalAnger false
