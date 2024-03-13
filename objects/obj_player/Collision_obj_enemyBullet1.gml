/// @description Colliding with any bullet
if (obj_game.dying = false) 
{
	health -= 1;
	alarm[2] = game_get_speed(gamespeed_fps);
}
instance_destroy(other);
shader_set(shd_redGlow);
shader_is_set = true;
alarm[2] = 30;