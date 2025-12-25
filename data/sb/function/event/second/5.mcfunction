$scoreboard players set #i serverboard $(setup)
scoreboard players operation #i serverboard %= #5 serverboard

# 5초 뒤 동기화
execute if score #i serverboard matches 0 run function sb:event/second/sync