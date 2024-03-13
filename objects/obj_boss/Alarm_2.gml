/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_enemy2)) {
	obj_enemy2.movementSpeed = 6
}
obj_player.movementSpeed = 6
movementSpeed = 4
obj_player.shotSpeed = 10
shotSpeed = 5
obj_miniBossBullet.bulletSpeed = 2
if (instance_exists(obj_playerBullet1)) {
	obj_playerBullet1.bulletSpeed = 10
}
alarm[3] = irandom_range(300, 600)
