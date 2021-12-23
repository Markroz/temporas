/// @description draw_sprite_neon_ext(spr, img, x, y, xscl, yscl, ang, blend, alpha, glow)
/// @param spr
/// @param  img
/// @param  x
/// @param  y
/// @param  xscl
/// @param  yscl
/// @param  ang
/// @param  blend
/// @param  alpha
/// @param  alpha2
/// @param  glow
/// @param  size
function draw_sprite_neon_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8,alfa2, argument9,argu10,fact = 0.4) {

	


	var img = argument1;
	if img == -1
	    img = image_index;
	
	
	shader_set(shader_neon);

	var coords = sprite_get_uvs(argument0, img);
	shader_set_uniform_f(shader_get_uniform(shader_neon, "pixelW"), ((coords[2] - coords[0]) / (sprite_get_width(argument0) * argument4)));
	shader_set_uniform_f(shader_get_uniform(shader_neon, "pixelH"), ((coords[3] - coords[1]) / (sprite_get_height(argument0) * argument5)));
	shader_set_uniform_f(shader_get_uniform(shader_neon, "glowCol"),
	    colour_get_red(argument9) / 255, colour_get_green(argument9) / 255, colour_get_blue(argument9) / 255, 1);
	shader_set_uniform_f(shader_get_uniform(shader_neon, "radius"),8 + argu10);
	shader_set_uniform_f(shader_get_uniform(shader_neon, "factor"), fact);

	draw_sprite_ext(argument0, img, argument2, argument3, argument4, argument5, argument6, argument7, alfa2);

	shader_reset();
	
	


}
