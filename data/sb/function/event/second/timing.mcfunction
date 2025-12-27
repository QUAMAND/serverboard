$scoreboard players set #i serverboard $(setup)
scoreboard players operation #i serverboard %= #SyncTiming serverboard

# 5초 뒤 동기화
execute if score #i serverboard matches 0 run function sb:event/second/sync