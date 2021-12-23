// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function choque_cabeza(objeto){
	
	switch(objeto.object_index){
		
		case cespe_01:
			with(objeto){
				///instance_destroy();	
			}
			break;
			
		case bloque_moneda_rompe:
			with(objeto){
				
				if(!audio_is_playing(moneda_sonido)) audio_play_sound(moneda_sonido,0.2,false);
				Gestor.monedas++;
				
				
				image_index++;
				if(image_index == image_number){
					instance_destroy();	
				}
			}
			break;
		
	}
}