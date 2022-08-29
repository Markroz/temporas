// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function guardar(roooom){

	ini_open(working_directory + "guardar.tana");
	ini_write_real("pj","rm",roooom);
	ini_write_real("pj","oro",Gestor.monedas);
	ini_write_real("pj","vida",Gestor.vidas);
	ini_close();
	show_debug_message("Juego guardado");
	show_debug_message(working_directory + "guardar.tana");
	
	//var json = guardar_instancia();
	//var file = file_text_open_write("save.json");
	//file_text_write_string(file,json);
	//file_text_close(file);
	
	//url_open("save.json");
	
	//game_save("guaaarda.save");
}



function guardar_reinicio(){

	ini_open(working_directory + "guardar.tana");
	ini_write_real("pj","rm",Nivel1);
	ini_write_real("pj","oro",0);
	ini_write_real("pj","vida",3);
	ini_close();
	show_debug_message("Juego guardado");
	show_debug_message(working_directory + "guardar.tana");
	
	//var json = guardar_instancia();
	//var file = file_text_open_write("save.json");
	//file_text_write_string(file,json);
	//file_text_close(file);
	
	//url_open("save.json");
	
	//game_save("guaaarda.save");
}

function cargar(){
	
	if(file_exists(working_directory + "guardar.tana")){
	}
	
		ini_open(working_directory + "guardar.tana");
		var rm = ini_read_real("pj","rm",Nivel1);
		var v = ini_read_real("pj","vida", 3);
		var p_oro = ini_read_real("pj","oro", 0);
		ini_close();
		
		if(room_exists(rm)){
			
			if(v > 0) Gestor.vidas = v;
			else Gestor.vidas = 3;
			Gestor.monedas = p_oro;
			if(room != rm) room_goto(rm);
		}
		 
		show_debug_message("Juego Cargado, ");

		
	


}
