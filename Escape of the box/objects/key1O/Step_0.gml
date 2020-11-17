/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if distance_to_point(x,288+32)<=5 && arriba==false
{
	arriba=true;
}
 if distance_to_point(x,288-16)<=5 && arriba==true
{
	arriba=false;
}

if arriba==true
{
	y-=0.5;
}
 if arriba==false
{
	y+=0.5;
}