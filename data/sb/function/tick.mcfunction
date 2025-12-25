# 초 변경 트리거
# 첫 시간 동기화 지연은 5초입니다.
execute if score #SecondTrigger serverboard matches 1 run function sb:event/second/main

# 시간 동기화
function sb:src/time/loop