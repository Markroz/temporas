/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!Gestor.no_cae){
	
	var sa = collision_rectangle(x-4,y-2,x+4,y+1,escalera,false,false);
	var sa1 = collision_rectangle(x-4,y-2,x+4,y+1,solido_original,false,false);
	
	if(!sa1 && !sa){
		gravity = 0.25;
	}else{
		gravity = 0;	
		vspeed = 0;
		en_salto = false;
	}
	
	
	
	var objeto = collision_rectangle(x-4,y-2,x+4,y+vspeed,solido_original,false,true);
	if(objeto && !objeto.no_pies){
		y = objeto.y;
		gravity = 0;
		vspeed = 0;
		en_salto = false;
		choque_pies(objeto);	
	}
	
	
	var objeto = collision_rectangle(x-4,(y-sprite_height)-vspeed,x+4,(y-sprite_height)+2,solido_original,false,false);
	if(objeto && !objeto.no_cabeza){
		y = ((objeto.y+objeto.sprite_height) + sprite_height)+2;
		vspeed = 0;
		//gravity = 0;
		choque_cabeza(objeto);
	}
	
	
	var objeto = collision_rectangle(bbox_left-2,y-sprite_height,bbox_right+2,y+2,enemigo_original,false,false);
	if(objeto){
		pj_muere();	
	}


	if(vspeed == 0 && vv == 0){
		estado = estados.depie;
	}else if(vspeed == 0 && vv != 0){
		estado = estados.caminando;	
	}

	if(en_salto){
		estado = estados.saltando;	
	}else if(vspeed != 0 && !en_salto){
		estado = estados.cayendo;	
	}


	switch(estado){
		case estados.depie:
			pj_es_parado();
			break;
		case estados.saltando:
			pj_es_saltando();
			break;
		case estados.caminando:
			pj_es_caminando();
			break;
		case estados.cayendo:
			pj_es_cayendo();
			break;
	}
}