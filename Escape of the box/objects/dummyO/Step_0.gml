/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,golpe)
{
	if (current_time - invul > 100)
	{
		impacto_enemigo();
	}
}

if place_meeting(x,y,golpe)
{
	invul = current_time;
}
vision();