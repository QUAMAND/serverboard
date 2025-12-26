tag @s add sb.player

execute store result score @s serverboard.id run scoreboard players get #id serverboard.id
scoreboard players add #id serverboard.id 1

execute rotated as @s summon marker run function sb:src/afk/store_pos_rot