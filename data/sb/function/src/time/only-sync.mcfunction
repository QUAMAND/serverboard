scoreboard players set #SecondTrigger serverboard 1

execute in overworld run function sb:src/time/setup

# 5분마다 동기화 확인
schedule function sb:src/time/only-sync 300s