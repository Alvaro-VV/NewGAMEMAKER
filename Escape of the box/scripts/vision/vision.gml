// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vision(xorigen, yorigen){
	if collision_circle(x,y,200,Seba,false,false)
	{
		if (!collision_line(x,y,Seba.x,Seba.y,col,false,false))
		{
			if x-Seba.x>0
			{
				x = x - 1;
			}else
			{
				x = x + 1;
			}	
			if y-Seba.y>0
			{
				y = y - 1;
			}else
			{
				y = y + 1;
			}
		}else{
			if (xorigen - x < 0)
			{
				x = x - 1;
			}else if (xorigen - x > 0)
			{
				x = x + 1;
			}
			if (yorigen - y < 0)
			{
				y = y - 1;
			}else if (yorigen - y > 0)
			{
				y = y + 1;
			}
		}
	}else
	{
		if (xorigen - x < 0)
		{
			x = x - 1;
		}else if (xorigen - x > 0)
		{
			x = x + 1;
		}
		if (yorigen - y < 0)
		{
			y = y - 1;
		}else if (yorigen - y > 0)
		{
			y = y + 1;
		}
	}
}
//point_distance(x,y,Seba.x,Seba.y) < point_distance(x,y,col.x,col.y)
//distance_to_object(Seba) < distance_to_object(col)