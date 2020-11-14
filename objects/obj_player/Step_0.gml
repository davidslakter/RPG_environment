/// @description Insert description here
// You can write your code in this editor
event_inherited()


if (keyboard_check(vk_right)){
	
	x += 1
	sprite_index = spr_player_walk
	image_xscale = 1
	
}
else if (keyboard_check(vk_left)){
	x -= 1
	sprite_index = spr_player_walk
	image_xscale = -1
}
else if (keyboard_check(vk_up)){
	y -= 1
	sprite_index = spr_player_walk
}
else if (keyboard_check(vk_down)){
	y += 1
	sprite_index = spr_player_walk
}

else {
	sprite_index = spr_player_idle	
}