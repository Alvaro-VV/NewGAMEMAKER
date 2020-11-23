// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vision(xorigen, yorigen, rango, dezplazamiento){
    if collision_circle(x,y,rango,Seba,false,false) and Seba.vida>0
    {
        if (!collision_line(x,y,Seba.x,Seba.y,col,false,false) and !collision_line(x,y,Seba.x,Seba.y,puertaR,false,false))
        {
			//vision enemigo
			if Seba.x > x
			{
				image_xscale = -1;
			}
			else
			{
				image_xscale = 1;	
			}
			//movimiento
            if x - Seba.x > 0 and place_free(x-dezplazamiento,y)
            {
                x = x - dezplazamiento;
            }
			else if x-Seba.x < 0 and place_free(x+dezplazamiento,y)
            {
                x = x + dezplazamiento;
			}
			if y - Seba.y > 0 and place_free(x,y-dezplazamiento)
            {
                y = y - dezplazamiento;
            }
			else if y - Seba.y < 0 and place_free(x,y+dezplazamiento)
            {
                y = y + dezplazamiento;
            }
		}else{
			//vista
			if xorigen > x
			{
				image_xscale = -1;
			}else
			{
				image_xscale = 1;	
			}
			//movimineto
	        if (xorigen - x > 0) and place_free(x+dezplazamiento,y)
	        {
	            x = x + dezplazamiento;
	        }
			else if (xorigen - x < 0) and place_free(x-dezplazamiento,y)
	        {
	            x = x - dezplazamiento;
	        }
			
			if (yorigen - y > 0) and place_free(x,y+dezplazamiento)
	        {
	            y = y + dezplazamiento;
			}
			else if (yorigen - y < 0) and place_free(x,y-dezplazamiento)
			{
	            y = y - dezplazamiento;
	        }
		}
		}else
		{
		//vision
		if xorigen > x
		{
			image_xscale = -1;
		}else
		{
			image_xscale = 1;	
		}
		//movimineto
		if (xorigen - x > 0) and place_free(x+dezplazamiento,y)
        {
            x = x + dezplazamiento;
        }
		else if (xorigen - x < 0) and place_free(x-dezplazamiento,y)
		{
            x = x - dezplazamiento;
        }
		
		if (yorigen - y > 0) and place_free(x,y+dezplazamiento)
        {
            y = y + dezplazamiento;
        }
		else if (yorigen - y < 0) and place_free(x,y-dezplazamiento)
        {
            y = y - dezplazamiento;
	    }
	}
}
