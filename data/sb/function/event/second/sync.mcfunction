# 초시계 시작
stopwatch create sb:
advancement revoke @a[limit=1] only sb:tick

# 시간 저장 및 설정
data modify storage sb:time start.t set string block 29999983 0 29999983 LastOutput.text 1 -2
data modify storage sb:time start.h set string storage sb:time start.t 0 2
data modify storage sb:time start.m set string storage sb:time start.t 3 5
data modify storage sb:time start.s set string storage sb:time start.t 6 8

function sb:src/time/setter with storage sb:time start

# 동기화 데이터 제거
fill 29999983 0 29999983 29999983 1 29999983 air
data remove storage sb:time setup

# tick.json 해제
scoreboard players reset #SecondTrigger serverboard