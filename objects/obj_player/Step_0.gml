/// @description Insert description here
// You can write your code in this editor
if (states = States.regular) and !(states = States.dead) {
	if keyboard_check(vk_left) x -= movementSpeed;
	if keyboard_check(vk_right) x += movementSpeed;
	if keyboard_check(vk_up) y -= movementSpeed;
	if keyboard_check(vk_down) y += movementSpeed;
	if keyboard_check(vk_space) and (canShoot = true) {
		instance_create_layer(x, y,"Instances", obj_playerBullet1)
		canShoot = false
		alarm[0] = 5
	}
}
x = clamp(x, camera_get_view_x(view_camera[0]), room_width);
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0])+768);

//dev
if (keyboard_check_pressed(vk_backspace)) {
	health -= 1;
}