x= Seba.x;
y= Seba.y;
if(global.Jeringa==false and global.alcoholGel==false){
	sprite_index=Oscuridad;
}
else if((global.Jeringa==true and global.alcoholGel==false) or (global.Jeringa==false and global.alcoholGel==true)){
	sprite_index=Oscuridad2;
}
else if(global.Jeringa==true and global.alcoholGel==true)
{
	sprite_index=Oscuridad3;	
}