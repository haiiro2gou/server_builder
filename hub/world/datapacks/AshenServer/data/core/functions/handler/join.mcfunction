#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# リス地送り
    tp @s 0 32 0 -90 0

# メッセージ送信
    tellraw @s [{"text":"================================","color":"gold"}]
    tellraw @s [{"text":"Ashen Server ","color":"green"},{"nbt":"GameVersion","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @s [{"text":""}]
    tellraw @s [{"text":"Thanks for playing!"}]
    tellraw @s [{"text":"================================","color":"gold"}]
