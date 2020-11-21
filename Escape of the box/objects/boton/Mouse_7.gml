if !toque exit;

if(texto == "Jugar")
{
	room_goto(Historia);
}
if(texto== "Menú Principal")
{
	game_restart();	
}
if(texto== "Salir")
{
	game_end();	
}