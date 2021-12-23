/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

gravity_direction = 270;

//gravity = 0.4;

enum estados {
	depie,
	saltando,
	caminando,
	cayendo
}

color_texto = c_orange;

estado = estados.depie;

puede_saltar = true;
en_salto = false;
enPlata = false;
en_escalera = false;
//dir = 1;

velocidad = 4;
direccion = 1;
//if(room == Nivel4) velocidad = 6;


global.ubicacion_muerte_x = x;
global.ubicacion_muerte_y = y;


if(room == Nivel1){
	instance_create_layer(600,200,"delante",ada);
}else{
	instance_create_layer(x-32,y-50,"delante",ada);
}
