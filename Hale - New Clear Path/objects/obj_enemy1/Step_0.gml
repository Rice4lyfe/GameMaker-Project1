/// @description Insert description here
// You can write your code in this editor
if (obj_player.states = States.regular) {
	y += movementSpeed
	scr_spawn()
	if (canShoot = true) {
		instance_create_layer(x, y,"Instances", obj_enemyBullet1)
		canShoot = false
		alarm[0] = 80 // slowed fire rate from 60 to 80
	}
}


