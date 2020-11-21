// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function impacto_enemigo(){
    valor = 20;
    if place_meeting(x,y,golpe) && global.mira=="up"
    {
        vspeed -= valor;
    }
    else if place_meeting(x,y,golpe) && global.mira=="down"
    {
        vspeed += valor;
    }
    else if place_meeting(x,y,golpe) && global.mira=="left"
    {
        hspeed -= valor;
    }
    else if place_meeting(x,y,golpe) && global.mira=="right"
    {
        hspeed += valor;
    }
}