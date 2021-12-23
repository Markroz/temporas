// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function cerrar_ventana(){
	if(argument0 != -1){
		instance_destroy(argument0);	
	}
	
	
}

function abrir_ventana_opciones(){
	instance_create_depth(0,0,-1000000,Opciones);	
}