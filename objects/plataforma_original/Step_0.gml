/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

vv = 0;


if(!vertical){
	if(!reversa){
		if(x > xstart+rango){
			mover = -1;
		}else if(x <= xstart-1){
			mover = 1;	
		}
	}else{
		if(x >= xstart+1){
			mover = -1;
		}else if(x < xstart - rango){
			mover = 1;	
		}
	}


	image_xscale = image_xscale * mover;
}else{
	
	if(y >= ystart+1){
		mover = -1;
	}else if(y < ystart-rango){
		mover = 1;	
	}

}

vv = mover;

moviendoX = 0;
moviendoY = 0;

repeat(2){

	if(!vertical){
		
			x += vv;
			moviendoX += vv;	
		
	}else{
		
			y += vv;
			moviendoY += vv;	
	
	}
	
}
