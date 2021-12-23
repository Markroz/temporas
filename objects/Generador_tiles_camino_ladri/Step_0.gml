


for(var e = 0; e < size; e++){
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
	}else if(ra < 2){
			var vida1  = instance_create_layer(x,y,"medio",vida);
			vida1.image_xscale = 0.5;
			vida1.image_yscale = 0.5;
	}
	
	
 
}

y += 16;
x = xstart;

for(var i = 0; i < size; i++){
	x += 16;
	if(i == 0){
		tilemap_set_at_pixel(ground_tile,7,x,y);
	}else if(i+1 == size){
		tilemap_set_at_pixel(ground_tile,9,x,y);
	}else{
		tilemap_set_at_pixel(ground_tile,7,x,y);
	}
	
	var oj = instance_create_depth(x,y,205,solido);
	oj.image_xscale = 0.5;
	oj.image_yscale = 0.5;
			
}

instance_destroy();