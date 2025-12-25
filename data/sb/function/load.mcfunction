# 스토리지 초기화
function sb:init/storage

# 로드 메시지
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sb:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"green",text:"Enabled"}]

# 점수판
# 존재 여부
execute if score #init serverboard matches 1 run return 0

# 생성
scoreboard objectives remove serverboard
scoreboard objectives add serverboard dummy [{shadow_color:-16777216,bold:1b,text:""},{nbt:"title",storage:"sb:",interpret:1b}]
scoreboard objectives setdisplay sidebar serverboard
   scoreboard players set #init serverboard 1

   scoreboard players set #24 serverboard 24
   scoreboard players set #60 serverboard 60
   scoreboard players set #SyncTiming serverboard 5
   scoreboard players set #SecondTrigger serverboard 1
   scoreboard players set #isDedicated serverboard 0

# 스코어 초기화
   function sb:init/score

# 집계
   function sb:src/counting
# 시간
   execute in overworld run function sb:src/time/setup
   # 초 동기화(0.00과 0.05같은 1틱 차이를 없애기 위함)
      schedule function sb:src/time/only-sync 101t replace
      #function sb:event/second/main