

paro = false;
var po = 0;
if(Personaje.direccion > 0){
	po = Personaje.x-32 
}else{
	po = Personaje.x+32;  
}

if(mp_grid_path(global.grid, path, x,y, po, Personaje.y-50, true)){
	if(distance_to_point(Personaje.x,Personaje.y) > 300){
		path_start(path, Personaje.velocidad*2, path_action_stop,0); 
	}else{
		path_start(path, Personaje.velocidad*1, path_action_stop,0); 
	}

}else{
	path_end();
}
 

