#region valores
k_a= keyboard_check( ord("A"));
k_left= keyboard_check(vk_left);

k_d= keyboard_check( ord("D"));
k_right= keyboard_check(vk_right);

k_w= keyboard_check( ord("W"));
k_up= keyboard_check(vk_up);

k_s= keyboard_check( ord("S"));
k_down= keyboard_check(vk_down);

k_reset= keyboard_check(ord("M"));

if poderpegar
{
	k_ataque= keyboard_check_pressed(vk_space);
}

#endregion

#region control de movimiento
if permitirtodo = true
{
    if((k_a or k_left) and global.podermover == true)
    {
        image_xscale=-1;
        sprite_index= right;
        image_speed=1;
        x=x-global.mov;
        global.mira="left";
    }
    else if((k_d or k_right) and global.podermover == true)
    {
        image_xscale=1;
        sprite_index=right;
        x=x+global.mov;
        image_speed=1;
        global.mira="right";
    }
    else if((k_w or k_up) and global.podermover == true)
    {
        sprite_index=up;
        y=y-global.mov;
        image_speed=1;
        global.mira="up";
    }
    else if((k_down or k_s) and global.podermover == true)
    {
        image_yscale=1;
        sprite_index=down;
        y=y+global.mov;
        image_speed=1;
        global.mira="down";
    }
    else if(keyboard_check_released(ord("A")) or keyboard_check_released(vk_left) and global.podermover == true)
    {
        image_xscale=-1;
        sprite_index=stop_r;
        image_speed=1;

    }
    else if(keyboard_check_released(ord("D")) or keyboard_check_released(vk_right) and global.podermover == true)
    {
        image_xscale=1;
        sprite_index=stop_r;
        image_speed=1;
    }
    else if(keyboard_check_released(ord("W")) or keyboard_check_released(vk_up) and global.podermover == true)
    {
        image_speed=0;
    }
    else if(keyboard_check_released(ord("S")) or keyboard_check_released(vk_down) and global.podermover == true)
    {
        sprite_index= idle;
        image_speed=1;
    }
}else
{
    alarm[1]=3;
}
#endregion

#region pegar
if k_ataque and poderpegar 
{
	global.podermover = false;
	poderpegar = false;
	alarm[0]=50;
	switch (global.mira)
	{
		case "up":
		instance_create_depth(x,y-32,-1,golpe);
		break;
		case "down":
		instance_create_depth(x,y+48,-1,golpe);
		break;
		case "left":
		instance_create_depth(x-32,y,-1,golpe);
		break;
		case "right":
		instance_create_depth(x+32,y,-1,golpe);
		break;
		default: break;
	}
}
#endregion

//VIDA DEL JUGADOR AL MORIR

if(Seba.vida<=0)
{
	sprite_index=dead;
	global.mov=0;
	poderpegar=false;
	
	if(Seba.vida==0){
	global.texto="¡HAS MUERTO!                                                                                 Presiona la tecla M para volver a jugar";
	instance_create_depth(478,512,dialogo,dialogo);
	Seba.vida-=1;
	}
	if(k_reset)
	{
		game_restart();
	}
	//NOTA, DESACTIVAR EL COMBATE CUANDO SE MUERE.
}
