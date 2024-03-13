/// @description Insert description here
// You can write your code in this editor
if (obj_game.dying = false) {
	health -= 1;
	instance_create_layer(x, y, "Instances", obj_explosion1);
	audio_play_sound(snd_explosion1, 1, false)
	instance_destroy();
}
