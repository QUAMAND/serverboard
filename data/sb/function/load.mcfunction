# 점수판
# 존재 여부
execute if score #init serverboard matches 1 run return run function sb:src/time/only-sync

# 스토리지 초기화
function sb:init/storage
# 플레이어 초기화
function sb:init/player

# 로드 메시지
tellraw @a [{bold:1b,text:"",shadow_color:-16777216},{bold:0b,text:"[ "},{nbt:"title",storage:"sb:",interpret:1b},{bold:0b,text:" ] datapack <- "},{"underlined":1b,color:"green",text:"Enabled"}]

# 생성
scoreboard objectives remove serverboard
scoreboard objectives remove serverboard.id

scoreboard objectives add serverboard.id dummy
scoreboard objectives add serverboard dummy [{shadow_color:-16777216,bold:1b,text:""},{nbt:"title",storage:"sb:",interpret:1b}]

scoreboard objectives setdisplay sidebar serverboard

# 스코어 초기화
   function sb:init/score

# 집계
   function sb:src/counting/schedule
# afk
   function sb:src/afk/schedule
# 시간
   execute in overworld run function sb:src/time/setup
   # 초 동기화(0.00과 0.05같은 1틱 차이를 없애기 위함)
      schedule function sb:src/time/only-sync 101t replace
      #function sb:event/second/main
# 날씨
   function sb:src/weather/schedule