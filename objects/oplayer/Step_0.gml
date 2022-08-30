/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check(vk_up) & place_free(x, y-collision) {
	y-=spd;
}

if keyboard_check(vk_left) & place_free(x-collision, y) {
	x-=spd;
}

if keyboard_check(vk_down) & place_free(x, y+collision) {
	y+=spd;
}


if keyboard_check(vk_right) & place_free(x+collision, y) {
	x+=spd;
}
*/

hspd=(keyboard_check(vk_right)-keyboard_check(vk_left))*spd;
vspd=(keyboard_check(vk_down)- keyboard_check(vk_up))*spd;

//push
scr_push();

// move
scr_move(hspd,vspd);
