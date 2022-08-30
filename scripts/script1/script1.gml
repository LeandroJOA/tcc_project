// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_push() {
	 // horizoltal push
	 if (place_meeting(x + hspd / 2, y, oBox)) {
		var block = instance_place(x + hspd / 2, y, oBox);
		 
		with(oBox){
			scr_move(oPlayer.hspd / 2,0);
		}
		
		hspd /= 2;
	 }
 
	// vertical push
	if (place_meeting(x, y + vspd / 2, oBox)){
		var block = instance_place(x, y + vspd / 2, oBox);
		
		with(oBox){
			scr_move(0, oPlayer.vspd / 2);
		}
		
		vspd /= 2;
	}
}
