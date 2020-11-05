//HUD DE LA VIDA DEL JUGADOR
if(vida==3)
{
	draw_sprite(Vida,0,x,y-50);
}
else if(vida==2)
{
	draw_sprite(Vida,1,x,y-50);
}
else if(vida==1)
{
	draw_sprite(Vida,2,x,y-50);
}
else if(vida==0)
{
	draw_sprite(Vida,3,x,y-50);//NO CONTIENE NADA LA IMAGEN
}