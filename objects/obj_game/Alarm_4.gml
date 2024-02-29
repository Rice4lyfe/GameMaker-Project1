/// @description Insert description here
// You can write your code in this editor
allowMovement = true;
bossText = false;
instance_create_layer(camera_get_view_x(view_camera[0]) + 200, camera_get_view_y(view_camera[0]) + 200, "Instances", obj_miniBoss);
bossHealthBar = true;
doTimer = true;