

if(iniciado){
	//if(detener) Gestor.detenido = true;
	
	var hayMensajes = false;
	for(var i = 0; i < array_length(mensajes); i++){
		
			if(instance_exists(mensajes[i]) && !mensajes[i].iniciar){
					Gestor.detenido = mensajes[i].detener;
					mensajes[i].iniciar = true;
					hayMensajes = true;
					break;
			}else if(instance_exists(mensajes[i]) && mensajes[i].iniciar){
				hayMensajes = true;
				break;
			} 
	
	}
	
	if(!hayMensajes){
		instance_destroy();
	}
}