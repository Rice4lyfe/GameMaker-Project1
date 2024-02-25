/// @description Insert description here
// You can write your code in this editor
if (obj_player.states = States.cutscene) {
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) - 3);
	obj_player.x = room_width/2;
	obj_player.y -= 4;
}
if (health <= 0) and (dying = false) {
	if (lives < 2) {
		obj_player.states = States.dead;
		alarm[2] = 100;
	}
	obj_player.states = States.dead;
	dying = true;
	alarm[1] = 100;
}

