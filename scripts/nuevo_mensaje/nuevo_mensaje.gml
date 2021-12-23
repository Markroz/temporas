// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function nuevo_mensaje(texto, objeto, tiempo, detener){
	var mensaje = instance_create_depth(x,y,depth,Mensaje);
	mensaje.texto = texto;
	mensaje.objeto = objeto;
	mensaje.tiempo = room_speed * tiempo;
	mensaje.detener = detener;
	return mensaje;
}

function nuevo_mensaje_tecla(texto, objeto, tecla, detener){
	var mensaje = instance_create_depth(x,y,depth,Mensaje);
	mensaje.texto = texto;
	mensaje.objeto = objeto;
	mensaje.tecla = tecla;
	mensaje.detener = false;
	return mensaje;
}