if(global.palanca==true)
{
	room_goto(tpzone);
	Seba.x=tp_x;
	Seba.y=tp_y;
}
else
{
	global.texto="La puerta está atrancada! Siquiera una llave puede abirla... ¡Necesitas una palanca!";
	instance_create_depth(478,512,dialogo,dialogo);
}