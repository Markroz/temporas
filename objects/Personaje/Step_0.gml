/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

vv = 0;


if(!Gestor.detenido){
		
	vv = 0;
	vv = -Gestor_teclas.left + Gestor_teclas.right;

	if(vv != 0) direccion = vv;
	
	
	repeat(velocidad){
		if(place_free((x)+vv, y)){
			x += vv;
		}
	}
	
	if(collision_rectangle(x-4,y-2,x+4,y+1,escalera,false,false)){
		en_escalera = true;
		if(Gestor_teclas.up){
			repeat(2){
				if(place_free(x, y-1) && collision_rectangle(x-4,y-2,x+4,y,escalera,false,false)){
					y -= 1;
				}
			}
		}
		
		if(Gestor_teclas.down){
			repeat(2){
				if(place_free(x, y+1)){
					y += 1;
				}
			}
		}
		
	}else{
		en_escalera = false;
	}
		

	if(Gestor_teclas.space && !en_salto && !en_escalera && estado != estados.cayendo){

		if(Gestor_teclas.pressed){
				
			en_salto = true;
			if(!audio_is_playing(salto_sonido)) audio_play_sound(salto_sonido,0.2,false);

			Gestor.saltos++;
			vspeed = -5.5;
		
		}
	}
		
		
	
	
}


