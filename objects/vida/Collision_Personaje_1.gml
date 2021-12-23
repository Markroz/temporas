/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Gestor.vidas++;
if(!audio_is_playing(vida_sonido)) audio_play_sound(vida_sonido,0.2,false);

instance_destroy();