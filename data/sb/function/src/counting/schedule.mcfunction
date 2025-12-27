execute store result score #PlayerCount serverboard if entity @a
execute store result score #AfkPlayerCount serverboard if entity @a[tag=sb.afk]
scoreboard players display numberformat 03 serverboard fixed ["",{shadow_color:[0,0,0,1],color:"#77FFFF",bold:1b,score:{name:"#PlayerCount",objective:serverboard}}," (AFK: ",{shadow_color:[0,0,0,1],color:"#FFCC77",bold:1b,score:{name:"#AfkPlayerCount",objective:serverboard}},")"]

execute store result score #EntityCount serverboard if entity @e[type=!player]
execute if score #EntityCount serverboard matches ..2048 run function sb:src/counting/entity {text:"양호",color:",color:'#77FFFF'"}
execute if score #EntityCount serverboard matches 2048..4096 run function sb:src/counting/entity {text:"주의",color:",color:'#FFFF55'"}
execute if score #EntityCount serverboard matches 4096..8192 run function sb:src/counting/entity {text:"위험",color:",color:'#FF5555'"}
execute if score #EntityCount serverboard matches 16384.. run function sb:src/counting/entity {text:"치명",color:",color:'#AA33AA'"}
#경고
execute if score #EntityCount serverboard matches 65536.. run tellraw @a {text:"세계에 엔티티가 너무 많습니다.",color:"dark_red"}

schedule function sb:src/counting/schedule 1s