
with(GroupButtons){
	focus = false;	
}


if(focus){
	
	if(key_pressed(Gestor_teclas.right || Gestor_teclas.down)){
		if(index < array_length(buttons)-1) index++;
		if(!audio_is_playing(sound_id)) audio_play_sound(sound_id,0.2,false);
		//if(index >= array_length(buttons)) index = 0;
	}else if(key_pressed(Gestor_teclas.left || Gestor_teclas.up)){
		if(index > 0) index--;
		if(!audio_is_playing(sound_id)) audio_play_sound(sound_id,0.2,false);
		//if(index < 0) index = array_length(buttons)-1;
	}

	for(var i = 0; i < array_length(buttons); i++){
			if(buttons[i] != -1){
				if(index == i) buttons[i].selected = true;
				else  buttons[i].selected = false;
			}
	
	}

}