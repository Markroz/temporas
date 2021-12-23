/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(mostrando){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_set_color(c_black);
	draw_set_alpha(0.50);

	draw_roundrect(xr,yr,widthr,heightr,false);

	draw_set_color(c_white);
	draw_set_alpha(1);


	draw_roundrect(xr,yr,widthr,heightr,true);



	var i = 0

	do
	{
	   i += 1
	draw_roundrect(xr-i,yr-i,widthr+i,heightr+i,true);

	}
	until(i = 3)


	
	draw_set_font(gui);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	draw_text(xr+15, yr+20,paginas[pagina]);




	draw_set_font(gui2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_set_color(color_boton_siguiente);
	draw_roundrect(widthr - 104,heightr - 32,widthr - 20,heightr - 10,false);

	draw_set_color(c_black);
	if(pagina < array_length(paginas)-1) draw_text(widthr-62,heightr-20,"Siguiente");
	else draw_text(widthr-62,heightr-20,"Cerrar");

	if(pagina > 0){
		draw_set_color(color_boton_atras);
		draw_roundrect(widthr - 204,heightr - 32,widthr - 120,heightr - 10,false);
		
		draw_set_color(c_black);
		draw_text(widthr-162,heightr-20, "Atras");
	}
}
