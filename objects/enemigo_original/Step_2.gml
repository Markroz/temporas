/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(gravedad){
	if(!collision_rectangle(x-15,y,x+15,y+1,solido_original,true,false)) gravity = 0.3;




	if(vspeed > 0){
			var objeto = collision_rectangle(x-15,y,x+15,y+vspeed,solido_original,true,false);
			if(objeto){
			
				y = colision_comprueba2(x-15,y,x+15,(y+vspeed),objeto,true,false);
				vspeed = 0;
				gravity = 0;
				en_salto = false;
			}
	}else if(vspeed < 0){
			var objeto = collision_rectangle(x-15,y-sprite_height,x+15,(y-sprite_height)+vspeed,solido_original,true,true);
			if(objeto){
				y = (objeto.y+objeto.sprite_height) + sprite_height;
				vspeed = 0;
			//	choque_cabeza(objeto);
			}
	}




	if(vspeed == 0 && vv == 0){
		estado = estados_en.depie;
	}else if(vspeed == 0 && vv != 0){
		estado = estados_en.caminando;	
	}

	if(vspeed != 0 && en_salto){
		estado = estados_en.saltando;	
	}else if(vspeed != 0 && !en_salto){
		estado = estados_en.cayendo;	
	}

}

switch(estado){
	case estados_en.depie:
		//pj_es_parado();
		break;
	case estados_en.saltando:
		//pj_es_saltando();
		break;
	case estados_en.caminando:
		//pj_es_caminando();
		break;
	case estados_en.cayendo:
		//pj_es_cayendo();
		break;
}	
