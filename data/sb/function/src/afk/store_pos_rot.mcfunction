rotate @s ~ ~

data modify storage sb:data p.pos append from entity @s Pos
data modify storage sb:data p.rot append from entity @s Rotation

kill