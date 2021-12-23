/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

vv = 0;


if(!Gestor.detenido && !no_se_mueve){
	if(!vertical){
		if(x > xstart+rango){
			mover = -1;
		}else if(x < xstart-rango){
			mover = 1;	
		}
		image_xscale = mover;
	}else{
		if(y > ystart+rango){
			mover = -1;
			image_speed = 1;
			direction = -90;
		}else if(y < ystart-rango){
			mover = 1;	
			direction = 90;
		}
	}

	if(cae_ingremento){
		if(mover > 0){
			cae_ingre += 0.075;	
			if(cae_ingre > velocidad) cae_ingre = velocidad;
			vv = (cae_ingre/10)*mover;	
		}else{
			cae_ingre = 0;
		}
	
	}

	if(sube_disminuir && mover < 0){
		sube_dismi += 0.1;
		image_speed -= 0.001;
		if((velocidad-sube_dismi) < 0){
			mover = 1;
			if(cae_ingre) cae_ingre = sube_dismi;
			image_speed = 0;
			//direction = 90;
			sube_dismi = 0;
		}else{
			vv = (((velocidad-sube_dismi))/10)*mover;	
		}
	}else if(sube_disminuir) {
		sube_dismi = 0;
		image_speed += 0.05;
	}


	
	if(!sube_disminuir && !cae_ingremento) vv = (velocidad/10)*mover;



	repeat(10){
		if(!vertical){
			if(!place_free(x+vv, y) && place_free(x+vv,y-3)) y--;
	
			if(place_free(x+vv, y) && place_free(x+vv,y+2) && !place_free(x+vv,y+3)) y+=2;
	
			if(place_free(x+vv, y)) x += vv;
		}else{
			y += vv;	
		}
	
	}
}

