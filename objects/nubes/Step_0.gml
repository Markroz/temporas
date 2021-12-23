/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (camera_get_view_x(view_camera[0]) > x - sprite_width)
{
	image_index = irandom(7);
	y = irandom_range(0, 200);
	
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])+ irandom_range(50-sprite_width,1200-sprite_width);
	
	speed = random_range(0.25,1.5);
}
