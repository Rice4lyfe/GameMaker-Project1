/// @description Insert description here
// You can write your code in this editor
if (canSpawn = true) and (obj_game.numEnemies < 10) and (obj_player.states = States.regular) {
	
	instance_create_layer(irandom_range(0, camera_get_view_width(view_camera[0]) + sprite_width/2), camera_get_view_y(view_camera[0]) - (sprite_height/2), "Instances", obj_enemy3);
//testline
	canSpawn = false
	alarm[0] = 180
}

