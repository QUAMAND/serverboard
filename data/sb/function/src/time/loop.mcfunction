# 초시계 -> 초로 변환 -> 시간 적용
execute store result score #sb serverboard run stopwatch query sb:

# 시작 시간 가져오기
scoreboard players operation #s1 serverboard = #s serverboard
scoreboard players operation #m1 serverboard = #m serverboard
scoreboard players operation #h1 serverboard = #h serverboard

scoreboard players operation #s1 serverboard += #sb serverboard

scoreboard players operation #s2 serverboard = #s1 serverboard
   scoreboard players operation #s2 serverboard /= #60 serverboard
scoreboard players operation #m1 serverboard += #s2 serverboard

scoreboard players operation #m2 serverboard = #m1 serverboard
   scoreboard players operation #m2 serverboard /= #60 serverboard
scoreboard players operation #h1 serverboard += #m2 serverboard

scoreboard players operation #s1 serverboard %= #60 serverboard
scoreboard players operation #m1 serverboard %= #60 serverboard
scoreboard players operation #h1 serverboard %= #24 serverboard

# 점수판에 적용
scoreboard players display numberformat 07 serverboard fixed [{shadow_color:[0,0,0,1],color:"#99FFFF",bold:1b,text:""},{score:{name:"#h1",objective:serverboard}},":",{score:{name:"#m1",objective:serverboard}},":",{score:{name:"#s1",objective:serverboard}}]