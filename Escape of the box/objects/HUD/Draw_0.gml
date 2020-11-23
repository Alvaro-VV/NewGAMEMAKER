//HUD DE LA VIDA DEL JUGADOR
if(Seba.vida==3)
{
	draw_sprite(Vida,0,Seba.x,Seba.y-50);
}
else if(Seba.vida==2)
{
	draw_sprite(Vida,1,Seba.x,Seba.y-50);
}
else if(Seba.vida==1)
{
	draw_sprite(Vida,2,Seba.x,Seba.y-50);
}
else if(Seba.vida==0)
{
	draw_sprite(Vida,3,Seba.x,Seba.y-50);//NO CONTIENE NADA LA IMAGEN
}