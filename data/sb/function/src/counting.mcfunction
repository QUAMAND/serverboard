execute store result score #EntityCount serverboard if entity @e[type=!player]
execute store result score #PlayerCount serverboard if entity @a

scoreboard players display numberformat 01 serverboard fixed {shadow_color:[0,0,0,1],color:"#55FFFF",bold:1b,score:{name:"#EntityCount",objective:serverboard}}
scoreboard players display numberformat 03 serverboard fixed {shadow_color:[0,0,0,1],color:"#77FFFF",bold:1b,score:{name:"#PlayerCount",objective:serverboard}}

schedule function sb:src/counting 1s