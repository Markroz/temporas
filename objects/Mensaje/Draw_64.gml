/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(iniciado){
	draw_set_color(color);
	draw_set_font(gui2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	
	
	
	var pos_x = ((objeto.x - camera_get_view_x(view_camera[0])) / camera_get_view_width(view_camera[0])) * display_get_gui_width();;
	
	
	var pos_y =  (((objeto.y-5) - camera_get_view_y(view_camera[0])) / camera_get_view_height(view_camera[0])) * display_get_gui_height();;
	
	

	draw_text( pos_x, (( pos_y - objeto.sprite_height) - 5), texto);
	
}