# 모든 플레이어가 afk인지 확인
execute as @a[tag=sb.player] run function sb:src/afk/check
data remove storage sb:data m
data remove storage sb:id id

#3분 마다
schedule function sb:src/afk/schedule 180s