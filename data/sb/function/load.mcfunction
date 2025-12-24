# 로드 메시지
tellraw @a [{bold:true,text:"",shadow_color:-16777216},{bold:false,text:"[ "},{color:"#3AF2FF","text":"S"},{color:"#38EBF8","text":"e"},{color:"#37E4F0","text":"r"},{color:"#35DDE9","text":"v"},{color:"#33D6E1","text":"e"},{color:"#31CFDA","text":"r"},{color:"#30C8D2","text":"B"},{color:"#2EC1CB","text":"o"},{color:"#2CBAC3","text":"a"},{color:"#2AB3BC","text":"r"},{color:"#27A5AD","text":"d"},{bold:false,text:" ] datapack <- "},{"underlined":true,color:"green",text:"Enabled"}]

# 점수판
# 존재 여부
#execute if score #init serverboard matches 1 run return 0

# 생성
scoreboard objectives remove serverboard
scoreboard objectives add serverboard dummy ["",{bold:true,text:"Status"}]
scoreboard objectives setdisplay sidebar serverboard
   #scoreboard players set #init serverboard 1

   scoreboard players set 00 serverboard 0
   scoreboard players set 01_ serverboard 0
   scoreboard players set 02 serverboard 0
   scoreboard players set 03_ serverboard 0
   scoreboard players set 04 serverboard 0
   scoreboard players set 05_ serverboard 0
   scoreboard players set 06 serverboard 0

# 인위적인 빈 값
   function sb:init/null