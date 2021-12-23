/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(room != Nivel4) {
	if(!audio_is_playing(moneda_sonido)) audio_play_sound(moneda_sonido,0.2,false);
}else{
	audio_play_sound(moneda_sonido,0.2,false);
}
Gestor.monedas++;
instance_destroy();