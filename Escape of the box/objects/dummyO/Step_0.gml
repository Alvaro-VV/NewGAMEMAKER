if place_meeting(x,y,golpe)
{
    if (current_time - invul > 650)
    {
        impacto_enemigo(20);
        invul = current_time;
        vida -=1;
    }
}

if place_meeting(x,y,golpe)
{
    alarm[0]=3;
}
vision(xorigen, yorigen, 200, 1.5);
golpeEnemy(20);
if vida = 0
{
    instance_destroy(instance_nearest(x,y,dummyO));
}