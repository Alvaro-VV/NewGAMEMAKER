if place_meeting(x,y,golpe)
{
    if (current_time - invul > 650)
    {
        impacto_enemigo();
        invul = current_time;
        vida -=1;
    }
}

if place_meeting(x,y,golpe)
{
    alarm[0]=3;
}
vision(xorigen, yorigen);
golpeEnemy();
if vida = 0
{
    instance_destroy(instance_nearest(x,y,dummyO));
}