// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move() {
	var hspd = argument[0];
	var vspd = argument[1];

	//move()
	/// horizotall movement
	if (place_meeting(x + hspd, y, oWall)) {
		while(!place_meeting(x + sign(hspd), y, oWall)) {
			x += sign(hspd);
		}
		
		hspd = 0;
	}
	
	if(place_meeting(x + oBox.sprite_width, y, oWall) && place_meeting(x + hspd, y, oBox)) {
		hspd = 0;
	}
	
	if(place_meeting(x - oBox.sprite_width, y, oWall) && place_meeting(x + hspd, y, oBox)) {
		hspd = 0;
	}
	
	x += hspd;
	
	/// Vertical movement
	if (place_meeting(x, y + vspd, oWall)) {
		while(!place_meeting(x, y+sign(vspd), oWall)) {
			y += sign(vspd);
		}
	
		vspd = 0;
	}
	
	if(place_meeting(x, y + oBox.sprite_height, oWall) && place_meeting(x, y + vspd, oBox)) {
		vspd = 0;
	}
	
	if(place_meeting(x, y - oBox.sprite_height, oWall) && place_meeting(x, y + vspd, oBox)) {
		vspd = 0;
	}
	
	y += vspd;
}
