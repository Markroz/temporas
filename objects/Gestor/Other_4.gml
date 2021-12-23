/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.grid = mp_grid_create(0,0,room_width/16, room_height/16, 16,16);

detenido = false;
pausa = false;
saltos = 0;
muertes = 0;

if(room == Nivel1){
	if(musica_actual == -1) musica_actual = audio_play_sound(mapa4_musica,0.2,true);
	else {
		audio_stop_sound(musica_actual);
		musica_actual = audio_play_sound(mapa4_musica,0.2,true);
	}
}else if(room != menu_inicial){
	if(musica_actual == -1) musica_actual = audio_play_sound(mapa2_musica,0.2,true);
	else {
		audio_stop_sound(musica_actual);
		musica_actual = audio_play_sound(mapa2_musica,0.2,true);
	}
}