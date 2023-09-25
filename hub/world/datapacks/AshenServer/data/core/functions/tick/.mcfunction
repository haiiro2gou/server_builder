#> core:tick/
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# プレイヤー処理部
    execute as @a at @s run function core:tick/player/
