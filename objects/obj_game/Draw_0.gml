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