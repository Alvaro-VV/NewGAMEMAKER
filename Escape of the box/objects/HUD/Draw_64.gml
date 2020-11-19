//HUD DE LA VIDA DEL JUGADOR
if(Seba.vida==3)
{
	draw_sprite(Vida,0,70,30);
}
else if(Seba.vida==2)
{
	draw_sprite(Vida,1,50,50);
}
else if(Seba.vida==1)
{
	draw_sprite(Vida,2,50,50);
}
else if(Seba.vida==0)
{
	draw_sprite(Vida,3,50,50);//NO CONTIENE NADA LA IMAGEN
}


if(global.Inventario == true)
{
	//INVENTARIO
	draw_sprite(Inventory,0,480,320);
	//LINEA 1
	draw_sprite(alcohol_fondo,0,260,220);
	draw_sprite(celular_fondo,0,380,220);
	draw_sprite(jeringa_fondo,0,453,220);
	draw_sprite(key1O_fondo,0,550,230);
	draw_sprite(linterna_fondo,0,650,220);
	//LINEA 2
	draw_sprite(mascarilla_fondo,0,260,300);
	draw_sprite(mouse_fondo,0,370,310);
	draw_sprite(palanca_fondo,0,463,285);
	draw_sprite(pendrive_fondo,0,550,305);
	draw_sprite(howTo_fondo,0,640,295);
	//LINEA 3
	draw_sprite(boss_fondo,0,453,380);
	
	
	
		if(global.key1O)
		{
			draw_sprite(tarjeta_sprt,0,550,230);	
		}
		if(global.alcoholGel == true)
		{
			draw_sprite(alcoholGel_sprt,0,260,220);
		}
		if(global.bossKey)
		{
			draw_sprite(bossKey_sprt,0,453,380);	
		}
		if(global.celular)
		{
			draw_sprite(celular_sprt,0,380,220);
		}
		if(global.howTo)
		{
			draw_sprite(howTo_sprt,0,640,295);	
		}
		if(global.Jeringa)
		{
			draw_sprite(jeringa_sprt,0,453,220);	
		}
		if(global.linterna)
		{
			draw_sprite(linterna_sprt,0,650,220);	
		}
		if(global.mascarilla)
		{
			draw_sprite(mascarilla_sprt,0,260,300);
		}
		if(global.mouse)
		{
			draw_sprite(Mouse_sprt,0,370,310);	
		}
		if(global.palanca)
		{
			draw_sprite(palanca_sprt,0,463,285);	
		}
		if(global.pendrive)
		{
			draw_sprite(pendrive_sprt,0,550,305);
		}		
}

