/// @description Insert description here
// You can write your code in this editor
image_angle += 90;
image_xscale = 0.5;
image_yscale = 0.5;
canShoot = true;
enum States {
	cutscene,
	regular,
	dead
}
states = States.cutscene
health = 8; // nerfed from 15 to 8
lives = 3; // nerfed from 5 to 3
dying = false;
shader_is_set = false

