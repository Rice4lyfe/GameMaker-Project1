/// @description Make it easier to see the player while they are in space
draw_sprite_ext(spr_player,0,x,y,image_xscale,image_yscale,90,-1,1);
if(obj_game.timer <= 100)
{
	draw_sprite_ext(spr_glowPlayer,0,x,y,0.06,0.06,0,-1,1); // Taken from opengameart.org: Glow Circle by oglsdl Public Domain License
}