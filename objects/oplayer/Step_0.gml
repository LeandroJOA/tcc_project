/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up) & place_empty(x, y-collision) {
	y-=spd;
}

if keyboard_check(vk_left) & place_empty(x-collision, y) {
	x-=spd;
}

if keyboard_check(vk_down) & place_empty(x, y+collision) {
	y+=spd;
}


if keyboard_check(vk_right) & place_empty(x+collision, y) {
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
	
	if place_meeting(x, y - 5, oWordIs) {
		oWordIs.y -= 1;
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
	
	if place_meeting(x - 5, y, oWordIs) {
		oWordIs.x -= 1;
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
	
	if place_meeting(x, y + 5, oWordIs) {
		oWordIs.y += 1;
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
	
	if place_meeting(x + 5, y, oWordIs) {
		oWordIs.x += 1;
	}
}

if place_meeting(oWordIs.x - 3, oWordIs.y, oWordWall) && place_meeting(oWordIs.x + 12, oWordIs.y, oWordStop) {
	
} else {
	if keyboard_check(vk_right) && place_meeting(x + 12, y, oWall) {
		x+=spd;
	}
	
	if keyboard_check(vk_right) && place_meeting(x - 3, y, oWall) {
		x+=spd;
	}
	
	if keyboard_check(vk_left) && place_meeting(x + 12, y, oWall) {
		x-=spd;
	}
	
	if keyboard_check(vk_left) && place_meeting(x - 3, y, oWall) {
		x-=spd;
	}	
}

if place_meeting(x + 5, y, oFlag) {
	room_goto_next();	
}


#region Dialogo
if distance_to_object(oParent_npcs) <= 10 {
	if keyboard_check_pressed(ord("F")) {//and global.dialogo == false
		var _npc = instance_nearest(x, y, oParent_npcs);	
		var _dialogo = instance_create_layer(x, y, "Dialogo", oDialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion