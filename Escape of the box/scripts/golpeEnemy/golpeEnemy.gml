function golpeEnemy(){
    valor = 20;
    if (instance_exists(Seba) and Seba.vida>0)
    {
        if (current_time - Seba.invulnerable > 1000)
        {
            if place_meeting(x+2,y,Seba)
            {
                Seba.hspeed += valor;
                Seba.invulnerable = current_time;
                Seba.alarm[1]=3;
                Seba.vida -= 1;
            }else if place_meeting(x,y-2,Seba)
            {
                Seba.vspeed -= valor;
                Seba.invulnerable = current_time;
                Seba.alarm[1]=3;
                Seba.vida -= 1;
            }else if place_meeting(x-2,y,Seba)
            {
                Seba.hspeed -= valor;
                Seba.invulnerable = current_time;
                Seba.alarm[1]=3;
                Seba.vida -= 1;
            }else if place_meeting(x,y+2,Seba)
            {
                Seba.vspeed += valor;
                Seba.invulnerable = current_time;
                Seba.alarm[1]=3;
                Seba.vida -= 1;
            }
        }
    }
}