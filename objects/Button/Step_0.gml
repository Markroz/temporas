
if(selected){
	sprite_index = index_selected;
	if(key_pressed(Gestor_teclas.enter) && onClick != -1){
		script_execute(onClick,objeto_padre);
		audio_play_sound(sound_click,0.2,false);
	}
}else{
	sprite_index = index_normal;	
}