/// @description Insert description here
// You can write your code in this editor
y -= bulletSpeed
if (y < camera_get_view_y(view_camera[0])) {
	instance_destroy();
}
