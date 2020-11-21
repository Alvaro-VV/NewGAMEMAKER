if(global.linterna==true)
{
	room_goto(tpzone);
	Seba.x=tp_x;
	Seba.y=tp_y;
}
else
{
	global.texto="El bosque es muy oscuro! Debes buscar una linterna!";
	instance_create_depth(478,512,dialogo,dialogo);
}