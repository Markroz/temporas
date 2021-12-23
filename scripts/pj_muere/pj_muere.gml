// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function pj_muere(){
	Personaje.x = global.ubicacion_muerte_x;
	Personaje.y = global.ubicacion_muerte_y-10;
	if(instance_exists(ada)){
			ada.x = Personaje.x;
			ada.y = Personaje.y-50;
	}
	
	Gestor.vidas--;
	Gestor.muertes++;
	//Gestor.pausa = true;
	//Gestor.detenido = true;
	if(!audio_is_playing(muerte_sonido)) audio_play_sound(muerte_sonido,0.2,false);
	
	up = false;
	down = false;
	left = false;
	right = false;

	space = false;
	escape = false;
	enter = false;
	shift = false;
	dispara = false;
	pause = false;
}