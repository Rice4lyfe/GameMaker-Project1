/// @description Insert description here
// You can write your code in this editor
if (states == States.regular) and !(states == States.dead) and (obj_game.allowMovement == true) {
	visible = true;
	instance_destroy(obj_explosion1)
	if keyboard_check(vk_left) x -= movementSpeed;
	if keyboard_check(vk_right) x += movementSpeed;
	if keyboard_check(vk_up) y -= movementSpeed;
	if keyboard_check(vk_down) y += movementSpeed;
	if keyboard_check(vk_space) and (canShoot = true) {
		instance_create_layer(x, y,"Instances", obj_playerBullet1)
		canShoot = false
		alarm[0] = shotSpeed
	}
}
else if(states == States.dead){
	visible = false;
	instance_create_layer(x, y, "Instances", obj_explosion1);
	audio_play_sound(snd_explosion1, 1, false)
}
x = clamp(x, camera_get_view_x(view_camera[0]), room_width);
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0])+768);

//dev
if (keyboard_check_pressed(vk_backspace)) {//testing player death
	health -= 1;
}
if (keyboard_check_pressed(vk_enter) and instance_exists(obj_miniBoss)) {
	obj_boss.bossHealth -= 50 //testing killing the boss
}
if (keyboard_check_pressed(vk_alt)) {
	obj_game.timer -= 1//use this to progress through the stages faster
}