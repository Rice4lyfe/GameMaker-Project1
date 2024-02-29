/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_red);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, health, 3, 3, 0);
draw_set_colour(c_black);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 10, "HEALTH: ", 2, 2, 0);
draw_set_colour(c_red);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 128, lives, 3, 3, 0);
draw_set_colour(c_black);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 96, "LIVES: ", 2, 2, 0);
//draw_set_colour(c_purple);
//draw_text_transformed(camera_get_view_x(view_camera[0]) + 16, camera_get_view_y(view_camera[0]) + 186, "(just for testing) NUMENEMIES: ", 1, 1, 0);
//for testing the number of enemies in the game
//draw_set_colour(c_purple);
//draw_text_transformed(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 220, numEnemies, 2, 2, 0);
//timer
draw_set_colour(c_blue);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 650, camera_get_view_y(view_camera[0]) + 32, timer, 2, 2, 0);

if (bossText = true) {
	draw_set_colour(c_red);
    draw_text_transformed(camera_get_view_x(view_camera[0]) + 200, camera_get_view_y(view_camera[0]) + 200, "BOSS INCOMING", 3, 3, 20);
}

if (bossHealthBar = true) {
	draw_set_colour(c_red);
    draw_healthbar(obj_miniBoss.x-50, obj_miniBoss.y-50, obj_miniBoss.x+50, obj_miniBoss.y-75, obj_miniBoss.bossHealth, c_black, c_red, c_lime, 0, true, true)
}