// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function impacto_enemigo(){
	valor = 80;
	if place_meeting(x,y,golpe) && global.mira=="up"
	{
		y-=valor;
		
	}
	else if place_meeting(x,y,golpe) && global.mira=="down"
	{
		y+=valor;
	}
	else if place_meeting(x,y,golpe) && global.mira=="left"
	{
		x-=valor;
	}
	else if place_meeting(x,y,golpe) && global.mira=="right"
	{
		x+=valor;
	}
}