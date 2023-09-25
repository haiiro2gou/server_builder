#> core:migration/v0.0.2/
# @within function core:migration/

# マイグレーション
    data modify storage global GameVersion set value "v0.0.2"

# 通知処理

#> from: 9804480e5d4325326b3739ec6174d954b60256a9
# @private
    scoreboard objectives add FirstJoinEvent minecraft.custom:minecraft.play_one_minute {"text": "イベント: 初回Join用"}
