// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function impacto_enemigo(){
	if place_meeting(x,y,golpe) && global.mira=="up"
	{
		y-=40;
	}
	else if place_meeting(x,y,golpe) && global.mira=="down"
	{
		y+=40;
	}
	else if place_meeting(x,y,golpe) && global.mira=="left"
	{
		x-=40;
	}
	else if place_meeting(x,y,golpe) && global.mira=="right"
	{
		x+=40;
	}
}