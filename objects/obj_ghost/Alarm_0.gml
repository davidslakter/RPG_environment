dodraw = true
var angle = irandom_range(0, 360)
var dist = irandom_range(128, 256)

x = dist * dcos(angle) + obj_player.x
y = dist * dsin(angle) + obj_player.y

alarm[1] = time_vanish