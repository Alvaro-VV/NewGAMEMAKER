if(global.mascarilla==true and global.howTo==true)
{
	room_goto(tpzone);
	Seba.x=tp_x;
	Seba.y=tp_y;
}
else if(global.mascarilla==false)
{
	global.texto="Estás por entrar a una zona con COVID, busca una mascarilla y podrás entrar";
	instance_create_depth(478,512,dialogo,dialogo);
}
else if(global.mascarilla==true and global.howTo==false)
{
	global.texto="Bueno... Tienes la mascarilla pero está mal puesta, busca un manual para ponerte bien la mascarilla o no pasas ¡es por tu bien!";
	instance_create_depth(478,512,dialogo,dialogo);
}