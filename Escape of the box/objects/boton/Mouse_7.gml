if !toque exit;

if(texto == "Jugar")
{
	room_goto(Historia);
}
if(texto== "Menú Principal")
{
	room_goto(Principal);	
}
if(texto== "Salir")
{
	game_end();	
}