var x_delta = x - avoid_targ.x
var y_delta = y - avoid_targ.y
var mag = int64(sqrt(x_delta * x_delta + y_delta * y_delta))
if(mag < 192) {
	if (mag != 0) {
		mag = move_radius / mag
		x_delta *= mag
		y_delta *= mag
	}
	
	path_x = x + x_delta
	path_y = y + y_delta
	
	var raddist = point_distance(x_start, y_start, path_x, path_y)
	if (raddist > radius) {
		raddist = radius / raddist
		path_x = (path_x - x_start) * raddist
		path_y = (path_y - y_start) * raddist
	}
	var dir = sign(path_x - x)
	if (dir != 0){
		image_xscale = dir * abs(image_xscale)
	}
}

if(x_prev == x and y_prev == y) {
	sprite_index = spr_cat_idle	
}
else {
	sprite_index = spr_cat_walk
}
x_prev = x
y_prev = y

if mp_grid_path(PATH_GRID, path, x, y, path_x, path_y, true){
	
	path_start(path, mspd, path_action_stop, false)
	
}