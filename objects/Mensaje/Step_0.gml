

if(iniciar && !iniciado){
	Gestor.detenido = detener;
	iniciado = true;
	color = objeto.color_texto;
	depth = objeto.depth;
	if(tiempo != -1){
		alarm[0] = tiempo;
	}
}


if(iniciado && !eliminando && (tiempo == -1 && presiono_tecla(tecla))){
	eliminando = true;
	alarm[0] = room_speed * 0.75;
}