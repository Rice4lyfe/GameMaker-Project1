/// @description Insert description here
// You can write your code in this editor
if (obj_player.states = States.cutscene) {
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) - 3);
	obj_player.x = room_width/2;
	obj_player.y = camera_get_view_y(view_camera[0]) + 700;
}
if (health <= 0) and (dying = false) { //check if player ran out of health
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	if (lives < 2) { //check if player ran out of lives
		obj_player.states = States.dead;
		alarm[2] = 100; //this alarm restarts the game
	}
	obj_player.states = States.dead;
	dying = true;
	alarm[1] = 100; //this alarm resets the player's position, reduces num of lives by 1, and resets health
}
if (asecond = true) and (obj_player.states = States.regular) {
asecond = false
alarm[3] = 60;
}
if (timer = 0) {
asecond = false
obj_player.states = States.cutscene
alarm[0] = 800
}
