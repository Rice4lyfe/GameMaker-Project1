// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn(){
	if (y > camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) + sprite_height/2)) {
		y = camera_get_view_y(view_camera[0]) - (sprite_height/2);
		x = irandom_range(0, camera_get_view_width(view_camera[0]));
	}
}