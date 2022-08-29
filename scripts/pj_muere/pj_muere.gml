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
	
	mensaje = instance_create_layer(Personaje.x,Personaje.y,"medio",GeneraMensaje);
	mensaje.detener = false;
	
	texto_mensaje = ""
	randomize();
	numero = irandom_range(0,6);
	switch(numero){
		case 0:
			texto_mensaje = "Que pendejo te moriste jajajaja";
			break;
		case 1:
			texto_mensaje = "JAJAJAJAJAJA";
			break;	 
		case 2:
			texto_mensaje = "Intenta no morir, por favor";
			break;	
		case 3:
			texto_mensaje = "¿Estas bromeando?";
			break;	
		case 4:
			texto_mensaje = "¿Eres tonto o comes pronto?";
			break;	 
		case 5:
			texto_mensaje = "a ver dijo el ciego...";
			break;	
		case 6:
			texto_mensaje = "Es que eres tontisimo...";
			break;	
	}
	
	mensaje.mensajes[0] = nuevo_mensaje(texto_mensaje,ada,1.5,mensaje.detener);
}