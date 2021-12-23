

x += 16;
for(var e = 1; e < sizeX-1; e++){
	randomize();
	x += 16;
	var ra = irandom(25);
//	ra = 10;
	if(ra > 15){
		switch(ra){
			case 16:
				tilemap_set_at_pixel(ground_tile,100, x, y);
				break;
			case 17:
				tilemap_set_at_pixel(ground_tile,101, x, y);
				break;
			case 18:
				tilemap_set_at_pixel(ground_tile,102, x, y);
				break;
			case 19:
				tilemap_set_at_pixel(ground_tile,116, x, y);
				break;
			case 20:
				tilemap_set_at_pixel(ground_tile,117, x, y);
				break;
			case 21:
				tilemap_set_at_pixel(ground_tile,118, x, y);
				break;
			default:
				tilemap_set_at_pixel(ground_tile,62, x, y);
				break;
			
		}
	}
	
	randomize();
	
	ra = irandom(100);
	
	if(ra > 10 && ra < 40){
		instance_create_layer(x,y,"medio",moneda);
	}else if(ra < 1){
			var vida1  = instance_create_layer(x,y,"medio",vida);
			vida1.image_xscale = 0.5;
			vida1.image_yscale = 0.5;
	}
	
	
 
}

y += 16;
x = xstart;

for(var i = 0; i < sizeX; i++){
	x += 16;
	if(i == 0){
		tilemap_set_at_pixel(ground_tile,79,x,y);
	}else if(i+1 == sizeX){
		tilemap_set_at_pixel(ground_tile,81,x,y);
	}else{
		tilemap_set_at_pixel(ground_tile,80,x,y);
	}
	
	var oj = instance_create_depth(x,y,205,solido);
	oj.image_xscale = 0.5;
	oj.image_yscale = 0.5;
			
}

for(var e = 1; e < sizeY-1; e++){
	x = xstart;
	y += 16;
	for(var i = 0; i < sizeX; i++){
		x += 16;
		if(i == 0){
			tilemap_set_at_pixel(ground_tile,96,x,y);
		}else if(i+1 == sizeX){
			tilemap_set_at_pixel(ground_tile,98,x,y);
		}else{
			randomize();
			var aa = irandom(20);
			switch(aa){
				case 1:
					tilemap_set_at_pixel(ground_tile,94,x,y);
					break;
				case 2:
					tilemap_set_at_pixel(ground_tile,95,x,y);
					break;
				case 3:
					tilemap_set_at_pixel(ground_tile,77,x,y);
					break;
				case 4:
					tilemap_set_at_pixel(ground_tile,78,x,y);
					break;
				case 5:
					tilemap_set_at_pixel(ground_tile,111,x,y);
					break;	
				case 6:
					tilemap_set_at_pixel(ground_tile,112,x,y);
					break;
				default:
					tilemap_set_at_pixel(ground_tile,97,x,y);
					break;
			}
			
		}
	
		var oj = instance_create_depth(x,y,205,solido);
		oj.image_xscale = 0.5;
		oj.image_yscale = 0.5;		
	}
}

y += 16;

x = xstart;

for(var i = 0; i < sizeX; i++){
	x += 16;
	if(i == 0){
		tilemap_set_at_pixel(ground_tile,113,x,y);
	}else if(i+1 == sizeX){
		tilemap_set_at_pixel(ground_tile,115,x,y);
	}else{
		tilemap_set_at_pixel(ground_tile,114,x,y);
	}
	
	var oj = instance_create_depth(x,y,205,solido);
	oj.image_xscale = 0.5;
	oj.image_yscale = 0.5;		
}


instance_destroy();