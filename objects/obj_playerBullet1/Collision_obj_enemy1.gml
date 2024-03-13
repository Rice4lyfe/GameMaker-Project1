 /// @description Insert description here
// You can write your code in this editor
instance_create_layer(other.x, other.y, "Instances", obj_explosion1);
audio_play_sound(snd_explosion1, 1, false)
instance_destroy(other);
obj_game.numEnemies -= 1;
score += other.enemy_score;
