function sb:src/weather/check {text:"맑음",color:',color:"#99FFFF"'}
execute if predicate sb:rain run function sb:src/weather/check {text:"subtitles.weather.rain",color:',color:"#92BAD2"'}
execute if predicate sb:thunder run function sb:src/weather/check {text:"subtitles.entity.lightning_bolt.thunder",color:',color:"#53789E"'}

schedule function sb:src/weather/schedule 1s