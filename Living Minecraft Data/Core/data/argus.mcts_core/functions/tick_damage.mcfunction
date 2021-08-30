# run by the entity who needs to be damage ticked
# UUID of the nearest player should be stored in
summon arrow ~ ~2 ~ {Silent:1b,pickup:2b,damage:0.0d,Motion:[0.0,-10.0,0.0],Tags:["ts_damagearrow"]}
summon arrow ~1 ~ ~ {Silent:1b,pickup:2b,damage:0.0d,Motion:[-10.0,0.0,0.0],Tags:["ts_damagearrow"]}
summon arrow ~-1 ~ ~ {Silent:1b,pickup:2b,damage:0.0d,Motion:[10.0,0.0,0.0],Tags:["ts_damagearrow"]}
summon arrow ~ ~ ~1 {Silent:1b,pickup:2b,damage:0.0d,Motion:[0.0,0.0,-10.0],Tags:["ts_damagearrow"]}
summon arrow ~ ~ ~-1 {Silent:1b,pickup:2b,damage:0.0d,Motion:[0.0,0.0,10.0],Tags:["ts_damagearrow"]}
summon arrow ~ ~-1 ~ {Silent:1b,pickup:2b,damage:0.0d,Motion:[0.0,10.0,0.0],Tags:["ts_damagearrow"]}
execute as @e[type=arrow,tag=ts_damagearrow,distance=..3] run data modify entity @s Owner set from entity @p UUID
