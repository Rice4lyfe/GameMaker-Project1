/// @description Insert description here
// You can write your code in this editor
if (obj_player.states = States.regular) and (obj_game.dying = false) {
	
	speed = movementSpeed
	if (y < camera_get_view_y(view_camera[0])) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
//	movementSpeedVertical = -movementSpeedVertical;
	}
	if (x > camera_get_view_width(view_camera[0])) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		//movementSpeedHorizontal = -movementSpeedHorizontal
	}
	if (y > camera_get_view_height(view_camera[0]) + camera_get_view_y(view_camera[0])) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	//	movementSpeedVertical = -movementSpeedVertical
	}
	if (x < camera_get_view_x(view_camera[0])) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		//movementSpeedHorizontal = -movementSpeedHorizontal
	}

	if (canShoot = true) {
		instance_create_layer(x, y,"Instances", obj_miniBossBullet) 
		canShoot = false
		pointingDirection += 30;
		alarm[0] = 5
	
	}
}
if (bossHealth <= 0) {
	obj_game.bossHealthBar = false;
	instance_destroy()
	
}
