if(global.mouse){
	activarPendrive=true;
	global.texto="Has descargado los archivos en un pendrive, recojelo en alguna parte de esta habitación"	
}
else{
	global.texto="Que raro... falta un mouse para poder usar la PC, ve a buscarlo"
}
instance_create_depth(478,512,dialogo,dialogo);