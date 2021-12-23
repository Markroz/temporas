// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function choque_pies(objeto){

	switch(objeto.object_index){
		
		case enemigo_original:
		if(!audio_is_playing(muere_enemigo)) audio_play_sound(muere_enemigo,0.2,false);
			with(objeto){
				instance_destroy();	
			}
			break;
			
		case Babosa:
			if(!audio_is_playing(muere_enemigo)) audio_play_sound(muere_enemigo,0.2,false);
			with(objeto){
				instance_destroy();	
			}
			break;
			
		case cespe_plata:
				//show_debug_message("chsds");
			if(objeto.muevePj) x += objeto.moviendoX;
			if(!en_salto){
				y = objeto.y;
			}
			break;
			
		case cespe_plata_h:
				//show_debug_message("chsds");
			//if(objeto.moviendoY > 0) 
			
			if(!en_salto){
				y = objeto.y;
			}
			if(objeto.moviendoY < 0) enPlata = true;
			
			break;
		
	}
}