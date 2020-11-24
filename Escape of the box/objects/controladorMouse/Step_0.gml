if dialog_mouse.activarPendrive
{
	instance_activate_object(obj_pendrive);
	instance_activate_object(cientifico);
}else
{
	instance_deactivate_object(obj_pendrive);
	instance_deactivate_object(cientifico);
}
if global.pendrive
{
	instance_destroy(puertaP);
}