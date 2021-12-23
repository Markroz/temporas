/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(point_in_rectangle(device_mouse_raw_x(0),device_mouse_raw_y(0),widthr - 104,heightr - 32,widthr - 20,heightr - 10)){
	color_boton_siguiente = c_dkgrey;
	if(mouse_check_button_pressed(mb_left)) pagina++;	
	
}else color_boton_siguiente = c_teal;


if(pagina >= array_length(paginas)) mostrando = false;

if(pagina >= 1){
	if(point_in_rectangle(device_mouse_raw_x(0),device_mouse_raw_y(0),widthr - 204,heightr - 32,widthr - 120,heightr - 10)){
		color_boton_atras = c_dkgrey;
		if(mouse_check_button_pressed(mb_left)) pagina--;	
	
	}else color_boton_atras = c_teal;
}
