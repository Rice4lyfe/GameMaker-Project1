/// @description Insert description here
// You can write your code in this editor
if (obj_player.states == States.cutscene) {
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) - 3);
	obj_player.x = room_width/2;
	obj_player.y = camera_get_view_y(view_camera[0]) + 700;
}
if (health <= 0) and (dying == false) { //check if player ran out of health
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	if (lives < 2) { //check if player ran out of lives
		obj_player.states = States.dead;
		alarm[2] = 45; //this alarm restarts the game
	}
	dying = true;
	obj_player.states = States.dead;
	alarm[1] = 45; //this alarm resets the player's position, reduces num of lives by 1, and resets health
}
if (asecond == true) and (obj_player.states == States.regular) and (doTimer == true) {
	asecond = false
	alarm[3] = 60;
}

if (timer = 150) {
	doTimer = false
	allowMovement= false;
	instance_destroy(obj_spawnEnemy1)
	instance_destroy(obj_spawnEnemy2)
	instance_destroy(obj_spawnEnemy3)
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemy3)
	obj_player.x = room_width/2;
	obj_player.y = camera_get_view_y(view_camera[0]) + 700;
	bossText = true;
	alarm[4] = 60;
	
}

if (timer = 100) {
	if (instance_exists(obj_miniBoss)) {
		instance_destroy(obj_miniBoss)
	}
	asecond = false
	obj_player.states = States.cutscene
	alarm[0] = 800
	alarm[5] = 800
	numEnemies = 0
	
}

if (timer = 50) {
	bossText = true;
	doTimer = false
	numEnemies = 0;
	instance_destroy(obj_spawnEnemy1)
	instance_destroy(obj_spawnEnemy2)
	instance_destroy(obj_spawnEnemy3)
	instance_destroy(obj_enemyBullet1)
	instance_destroy(obj_enemyBullet2)
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemy3)
	alarm[6] = 60
}

if (timer = 0) and (instance_exists(obj_boss)) {
	outOfTime = true
	allowMovement = false
	obj_boss.movementSpeed = 0
	if (instance_exists(obj_enemy2)) {
		instance_destroy(obj_enemy2)
		instance_destroy(obj_spawnEnemy2)
	}
	alarm[7] = 120
}
