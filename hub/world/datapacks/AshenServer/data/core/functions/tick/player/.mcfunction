#> core:tick/player/
#
# プレイヤーに対するtick処理
#
# @within function core:tick/

#> this
# @within *
#   core:tick/player/
    #declare tag this

# thisタグ付与
    tag @s add this

# Deathタグ付与
    execute if entity @s[scores={DeathEvent=1..}] run tag @s add Death

# Triggers
    execute if entity @s[scores={FirstJoinEvent=1}] run function core:handler/first_join
    execute if entity @s[scores={RejoinEvent=1..}] run function core:handler/rejoin

# リセット
    tag @s remove this
