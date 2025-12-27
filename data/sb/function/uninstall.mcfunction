$data modify storage sb: key set value "$(key)"
#@Compare Key
   execute unless data storage sb: {key:"QUAM12"} run return run data remove storage sb: key
   data remove storage sb: key

#@Successed
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sb:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"red",text:"DISABLED"}]

scoreboard objectives remove serverboard
scoreboard objectives remove serverboard.id

data remove storage sb: title
data remove storage sb:data p
data remove storage sb:data m
data remove storage sb:data id
data remove storage sb:time start

tag @a remove sb.afk
tag @a remove sb.player
advancement revoke @a only sb:afk

schedule clear sb:src/afk/schedule
schedule clear sb:src/weather/schedule
schedule clear sb:src/time/only-sync

datapack disable "file/serverboard"