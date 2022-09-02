/// @description Insert description here
// You can write your code in this editor
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


if keyboard_check(vk_up)
{
    if place_meeting(x, y - 5, oBox) {
		oBox.y -= 1;
	}
	
	if place_meeting(x, y - 5, oWordStop) {
		oWordStop.y -= 1;
	}
	
	if place_meeting(x, y - 5, oWordWall) {
		oWordWall.y -= 1;
	}
}

if keyboard_check(vk_left)
{
    if place_meeting(x - 5, y, oBox) {
		oBox.x -= 1;
	}
	
	if place_meeting(x - 5, y, oWordStop) {
		oWordStop.x -= 1;
	}
	
	if place_meeting(x - 5, y, oWordWall) {
		oWordWall.x -= 1;
	}
}

if keyboard_check(vk_down)
{
    if place_meeting(x, y + 5, oBox) {
		oBox.y += 1;
	}
	
	if place_meeting(x, y + 5, oWordStop) {
		oWordStop.y += 1;
	}
	
	if place_meeting(x, y + 5, oWordWall) {
		oWordWall.y += 1;
	}
}

if keyboard_check(vk_right)
{
    if place_meeting(x + 5, y, oBox) {
		oBox.x += 1;
	}
	
	if place_meeting(x + 5, y, oWordStop) {
		oWordStop.x += 1;
	}
	
	if place_meeting(x + 5, y, oWordWall) {
		oWordWall.x += 1;
	}
}

if place_meeting(oWordWall.x + 5, oWordWall.y, oWordStop) {
	i++;
	show_debug_message(i);
}
