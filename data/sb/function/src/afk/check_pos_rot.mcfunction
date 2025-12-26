rotate @s ~ ~

# 좌표와 시선을 임시로 저장함
data modify storage sb:data m.pos set from entity @s Pos
data modify storage sb:data m.rot set from entity @s Rotation

# entity = marker
kill

# m.pos == p.pos[x] -> 0(같음)
# m.rot == p.rot[x] -> 0(같음)
$execute store success score #noSamePos serverboard run data modify storage sb:data m.pos set from storage sb:data p.pos[$(id)]
$execute store success score #noSameRot serverboard run data modify storage sb:data m.rot set from storage sb:data p.rot[$(id)]