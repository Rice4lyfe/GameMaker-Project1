/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(lives == 0)
{
	draw_text(100,100, "You died!\nNow earth is going to be invaded and you have NO cheeseburgers.\nA shame.");
}
else if (score < 100000)
{
	draw_text(100,100, "You lived.\nUnfortunately it seems the Crons were too much to\nhandle and you have NO cheeseburgers.");
}
else if (score >= 200000 and score <= 400000)
{
	draw_text(100,100, "You lived.\nThe Crons have been repelled and now you are served\nwith a year's worth of cheeseburgers for your troubles.\n Well done");
}
else if (score > 400000)
{
	draw_text(100,100, "You lived!\nHoly Crap that was a good performance.\nCheers and enjoy your lifetime supply of cheeseburgers");
}
else
{
	draw_text(100,100, "How did you get here?");
}


