/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,golpe)
{
    if (current_time - invul > 650)
    {
        impacto_enemigo(7);
        invul = current_time;
        vida -=1;
    }
}

if place_meeting(x,y,golpe)
{
    alarm[0]=3;
}
if muevete == true
{
	vision(xorigen, yorigen, 4000, 2);
}
golpeEnemy(25);
if vida = 0
{
    instance_destroy(instance_nearest(x,y,Jefe));
}

#region //imagen del jefe
grados = point_direction(x,y,Seba.x,Seba.y);
if muevete == true
{
	if (grados < 45 or grados > 315)
	{
		sprite_index = Jefe_left;
		image_xscale = -1;
	}
	else if grados >= 45 and grados < 135
	{
		sprite_index = Jefe_up;
	}
	else if grados >= 135 and grados < 225
	{
		sprite_index = Jefe_left;
		image_xscale = 1;
	}
	else if grados >= 225 and grados <= 315
	{
		sprite_index = Jefe_down;
	}
}
#endregion

if(vida==0)
{
	global.vencerJefe=true;
	global.texto="¡HAS VENCIDO AL JEFE POR LO QUE PUEDES SALIR DE LA CAJA 2020!";
	instance_create_depth(478,512,dialogo,dialogo);
	vida=-1;
	
}