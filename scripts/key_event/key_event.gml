// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function key_pressed(key1){
	if(Gestor_teclas.pressed && !Gestor_teclas.released && key1) return true;
	return false;
}

function key_release(key1){
	if(Gestor_teclas.released && !Gestor_teclas.pressed && key1) return true;
	return false;
}