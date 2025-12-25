# 초 변경 트리거
# 첫 시간 동기화 지연은 5초입니다.
execute if score #SecondTrigger serverboard matches 1 run function sb:event/second/main

# dedicated server(플레이어 <= 0)
#execute if entity @a[limit=1] run return 0
#function sb:src/time/dedicated/loop