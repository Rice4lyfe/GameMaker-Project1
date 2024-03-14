/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
//event_inherited();
if (instance_exists(obj_player)) {
    var distance = distance_to_object(obj_player);
    if (distance < attack_range) {
        path_end();
        direction = point_direction(x, y, obj_player.x, obj_player.y);
        speed = hsp;
    }
}

if (obj_player.states = States.regular) {
	scr_spawn()
	if (canShoot = true) {
		instance_create_layer(x, y,"Instances", obj_enemyBullet1)
		canShoot = false
		alarm[0] = 80 // slowed fire rate from 60 to 80
	}
}