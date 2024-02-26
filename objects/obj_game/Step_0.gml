/// @description Insert description here
// You can write your code in this editor
if (obj_player.states = States.cutscene) {
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) - 3);
	obj_player.x = room_width/2;
	obj_player.y -= 4;
}
if (health <= 0) and (dying = false) { //check if player ran out of health
	if (lives < 2) { //check if player ran out of lives
		obj_player.states = States.dead;
		alarm[2] = 100; //this alarm restarts the game
	}
	obj_player.states = States.dead;
	dying = true;
	alarm[1] = 100; //this alarm resets the player's position, reduces num of lives by 1, and resets health
}

