

if(sprite_index != -1) {
	if(!selected) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
	else draw_sprite_neon_ext(sprite_index,image_index,x,y,image_xscale + agrandaSeleccion,image_yscale + agrandaSeleccion,
																						image_angle,c_ltgray,image_alpha,0,make_color_rgb(14,204,242), 20,0.175);
	
}

draw_set_font(fuente);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(!selected) draw_set_color(color_text);
else draw_set_color(color_text_select);
draw_text(x,y,text);