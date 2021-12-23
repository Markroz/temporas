/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(room != menu_inicial){
	draw_set_color(c_black);
	draw_set_alpha(0.75);

	draw_rectangle(0,-5,display_get_gui_width(), 40,false);



	draw_set_alpha(1);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);

	draw_sprite(Sprite42,0,20,8);
	draw_set_font(gui);
	draw_set_color(c_white);
	draw_text(70,22,string(vidas));
	
	draw_sprite(m_coin_gui,0,120,8);
	draw_text(170,22,string(monedas));
	


	if(pausa){
		draw_set_font(pausa5);
		draw_set_valign(fa_center);
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text((display_get_gui_width()/2)-2,(display_get_gui_height()/2)-2,"Pausa");
		draw_set_color(c_white);
		draw_text((display_get_gui_width()/2),(display_get_gui_height()/2),"Pausa");
			
	}
	

}