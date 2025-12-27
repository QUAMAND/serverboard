# 플레이어 점수를 id로 사용
# list[x]
execute store result storage sb:id id int 1 run scoreboard players get @s serverboard.id
execute at @s summon marker run function sb:src/afk/check_pos_rot with storage sb:id

tag @s remove sb.afk
# pos || rot -> is afk!
execute if score #noSamePos serverboard matches 1 run return 0
execute if score #noSameRot serverboard matches 1 run return 0
tag @s add sb.afk