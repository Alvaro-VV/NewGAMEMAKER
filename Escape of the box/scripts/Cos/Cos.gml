// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Cos(){
	//vector 1
	vx = Seba.x - x;
	vy = Seba.y - y;
	//vector 2
	vx2 = 10;
	vy2 = 0;
	//calculo
	AB = (vx*vx2) + (vy*vy2)
	A = sqrt(sqr(vx) + sqr(vy));
	B = sqrt(sqr(vx2) + sqr(vy2));
	coseno = (AB)/(A*B);
	angulo = arccos(coseno);
	angulo = angulo*(180/pi);
	if (Seba.y > y)
	{
		angulo = 360-angulo;
	}
	//regresar
	return angulo;
}