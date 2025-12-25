forceload add 29999983 29999983
execute in overworld run setblock 29999983 0 29999983 repeating_command_block{Command:"help me"}
execute in overworld run setblock 29999983 1 29999983 ice
# destroy 조건은 블록 업데이트를 위함
execute in overworld run setblock 29999983 1 29999983 redstone_block destroy