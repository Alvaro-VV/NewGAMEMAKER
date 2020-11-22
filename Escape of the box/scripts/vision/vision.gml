// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vision(xorigen, yorigen){
    if collision_circle(x,y,200,Seba,false,false) and Seba.vida>0
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
            if x - Seba.x > 0 and place_free(x-1,y)
            {
                x = x - 1;
            }
			else if x-Seba.x < 0 and place_free(x+1,y)
            {
                x = x + 1;
			}
			if y - Seba.y > 0 and place_free(x,y-1)
            {
                y = y - 1;
            }
			else if y - Seba.y < 0 and place_free(x,y+1)
            {
                y = y + 1;
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
	        if (xorigen - x > 0) and place_free(x+1,y)
	        {
	            x = x + 1;
	        }
			else if (xorigen - x < 0) and place_free(x-1,y)
	        {
	            x = x - 1;
	        }
			
			if (yorigen - y > 0) and place_free(x,y+1)
	        {
	            y = y + 1;
			}
			else if (yorigen - y < 0) and place_free(x,y-1)
			{
	            y = y - 1;
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
		if (xorigen - x > 0) and place_free(x+1,y)
        {
            x = x + 1;
        }
		else if (xorigen - x < 0) and place_free(x-1,y)
		{
            x = x - 1;
        }
		
		if (yorigen - y > 0) and place_free(x,y+1)
        {
            y = y + 1;
        }
		else if (yorigen - y < 0) and place_free(x,y-1)
        {
            y = y - 1;
	    }
	}
}
