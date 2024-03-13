/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
audio_play_sound(snd_hit, 1, false)
bossHealth -= 1
shader_set(shd_redGlow);
shader_is_set = true;
alarm[4] = 30;