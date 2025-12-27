# id score
scoreboard players set #id serverboard.id 0

# main score
# const
   scoreboard players set #init serverboard 1
   scoreboard players set #24 serverboard 24
   scoreboard players set #60 serverboard 60
   scoreboard players set #SyncTiming serverboard 5

scoreboard players set #SecondTrigger serverboard 1
scoreboard players set #isDedicated serverboard 0

scoreboard players set 00_ serverboard 0
scoreboard players set 01 serverboard 0
scoreboard players set 02_ serverboard 0
scoreboard players set 03 serverboard 0
scoreboard players set 04_ serverboard 0
scoreboard players set 05 serverboard 0
scoreboard players set 06_ serverboard 0
scoreboard players set 07 serverboard 0

scoreboard players display name 00_ serverboard ''
scoreboard players display name 02_ serverboard ''
scoreboard players display name 04_ serverboard ''
scoreboard players display name 06_ serverboard ''

scoreboard players display numberformat 00_ serverboard blank
scoreboard players display numberformat 02_ serverboard blank
scoreboard players display numberformat 04_ serverboard blank
scoreboard players display numberformat 06_ serverboard blank

scoreboard players display name 01 serverboard {bold:1b,shadow_color:[0,0,0,.5],color:"#FFFF55",translate:"argument.entity.selector.self"}
scoreboard players display name 03 serverboard {bold:1b,shadow_color:[0,0,0,.5],color:"#FFFF77",translate:"entity.minecraft.player"}
scoreboard players display name 05 serverboard {bold:1b,shadow_color:[0,0,0,.5],color:"#FFFF99",translate:"soundCategory.weather"}
scoreboard players display name 07 serverboard {bold:1b,shadow_color:[0,0,0,.5],color:"#FFFFBB",translate:"mco.time.now"}

scoreboard players display numberformat 01 serverboard blank
scoreboard players display numberformat 03 serverboard blank
scoreboard players display numberformat 05 serverboard blank
scoreboard players display numberformat 07 serverboard blank