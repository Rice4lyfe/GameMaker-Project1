/// @description Insert description here
// You can write your code in this editor
allowMovement = true;
bossText = false;
instance_create_layer(camera_get_view_x(view_camera[0]) + 200, camera_get_view_y(view_camera[0]) + 200, "Instances", obj_boss);
bossHealthBar = true;
doTimer = true;
instance_create_layer(284, 284, "Instances", obj_spawnEnemy2);
