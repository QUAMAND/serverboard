# 이전 초시계 제거
execute if stopwatch sb: 0.. run stopwatch remove sb:
data modify storage sb:time setup set string block 29999983 0 29999983 LastOutput.text 7 -2
function sb:event/second/timing with storage sb:time