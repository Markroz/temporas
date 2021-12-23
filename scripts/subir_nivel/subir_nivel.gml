// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function subir_nivel(){
	if(room_next(room) != -1){
		guardar(room_next(room));
		room_goto_next();	
	}else{
		guardar_reinicio();
		game_restart();
	}
}