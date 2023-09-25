#> core:load_once
#
# load時に一回のみ実行される処理群
#
# @within function core:load

#> バージョン情報の設定
    data modify storage global GameVersion set value "v0.0.2"

#> gameruleの設定
    function core:define_gamerule

#> デバッグ用storageの設定
#
# Prefix.<DEBUG,SUCCESS,FAILED,ERROR,CRIT>
#
# @public
    #declare storage global
    data modify storage global Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage global Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage global Prefix.FAILED set value "§cFAILED >> §r"
    data modify storage global Prefix.ERROR set value "§cERROR >> §r"
    data modify storage global Prefix.CRIT set value "§4CRITICAL >> §r"

#> リセット必須オブジェクト等の削除
    scoreboard objectives remove Debug
    scoreboard objectives remove FirstJoinEvent

#> スコアボード類
    #> DEBUG用スコアボード
    # @within function core:load_once
        scoreboard objectives add Debug dummy {"text":"デバッグ"}

    #> イベントハンドラ用スコアボード
    # @within function
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add FirstJoinEvent minecraft.custom:minecraft.play_one_minute {"text":"イベント: 初回Join"}
        scoreboard objectives add RejoinEvent minecraft.custom:minecraft.leave_game {"text":"イベント: 再Join"}
