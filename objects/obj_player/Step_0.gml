/// @description Insert description here
// You can write your code in this editor
event_inherited()

hspd = 0
vspd = 0

if (keyboard_check(vk_right)){
	hspd += 1
}
if (keyboard_check(vk_left)){
	hspd -= 1
}
if (keyboard_check(vk_up)){
	vspd -= 1
}
if (keyboard_check(vk_down)){
	vspd += 1
}

if (hspd * hspd + vspd * vspd > 0){
	sprite_index = spr_player_walk
}
else {
	sprite_index = spr_player_idle	
}

if (sign(hspd) != 0){
	image_xscale = sign(hspd)
}

hspd *= mspd
vspd *= mspd

MoveCollide()