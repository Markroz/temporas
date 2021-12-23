
separacionX = 7;
separacionY = 3;

var che = false;

while(x < largoMax){
	
	randomize();
	
	var sizeX = irandom_range(2,50);
	randomize();
	var sizeY = irandom_range(2,4);
	randomize();
	x += (irandom_range(0,separacionX)*16);
	randomize();
	if(y > altoMax && y < bajoMax){
		y += (irandom_range(-separacionY,separacionY)*16);
	}else{
		if(y >= bajoMax){
			y += (irandom_range(-separacionY,0)*16);
		}else if(y <= altoMax){
			y += (irandom_range(0,separacionY)*16);
		}
	}
	
	var objeto = instance_create_layer(x,y,"atras",Generador_tiles_camino_cespe);
	objeto.sizeX = sizeX;
	objeto.sizeY = sizeY;
	
	if(sizeX >= 15){
		var enemigo = instance_create_layer(x+(16*8),y+16,"medio",enemigo_original);
		enemigo.rango = 16*6;
		if(x > largoMax / 2 && !che){
			instance_create_layer(x+(16*8),y+16,"medio",Checkpoint);
			che = true;
		}
		if(sizeX >= 20){
			if(irandom_range(0,100) <= 15){
				var n = irandom_range(0,100);
					if(n <= 33){
						var enemigo1 = instance_create_layer(x+(16*10),y+16,"medio",Babosa);
						enemigo1.rango = 16*8;
					}else if(n <= 66){
						var enemigo1 = instance_create_layer(x+(16*10),y-16,"medio",mosca);
						enemigo1.rango = 16*8;	
					}else{
						var enemigo1 = instance_create_layer(x+(16*10),y+16,"medio",enemigo_original);
						enemigo1.rango = 16*8;
					}
			}
			if(sizeX >= 30){
				if(irandom_range(0,100) <= 20){
					var n = irandom_range(0,100);
					if(n <= 33){
						var enemigo2 = instance_create_layer(x+(16*15),y+16,"medio",Babosa);
						enemigo2.rango = 16*12;
					}else if(n <= 66){
						var enemigo2 = instance_create_layer(x+(16*15),y-16,"medio",mosca);
						enemigo2.rango = 16*12;	
					}else{
						var enemigo2 = instance_create_layer(x+(16*15),y+16,"medio",enemigo_original);
						enemigo2.rango = 16*12;
					}
				}
				if(sizeX == 50){
					if(irandom_range(0,100) <= 40){
						var n = irandom_range(0,100);
						if(n <= 33){
							var enemigo3 = instance_create_layer(x+(16*25),y+16,"medio",Babosa);
							enemigo3.rango = 16*22;
						}else if(n <= 66){
							var enemigo3 = instance_create_layer(x+(16*25),y-16,"medio",mosca);
							enemigo3.rango = 16*22;	
						}else{
							var enemigo3 = instance_create_layer(x+(16*25),y+16,"medio",enemigo_original);
							enemigo3.rango = 16*22;
						}
					}
				}
			}
			
		}
		
		
	}
	
	x += (sizeX*16);
}

x += (16*4);

var objeto = instance_create_layer(x,y,"atras",Generador_tiles_camino_cespe);
objeto.sizeX = 10;
objeto.sizeY = 4;

//var bloque = instance_create_layer(x+(16*3),y-16,"medio",bloque_moneda_rompe);
var dialo = instance_create_layer(x+(16*3),y-250,"medio",GeneraMensaje);
dialo.image_xscale = 2;
dialo.image_yscale = 8;
dialo.detener = true;
dialo.mensajes = mensajes;


var puerta1 = instance_create_layer(x+(16*6),y-(16*4),"medio",puerta);
puerta1.image_xscale = 3;
puerta1.image_yscale = 5;



instance_destroy();