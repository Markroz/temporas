/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(room != menu_inicial){
	mp_grid_add_instances(global.grid,self,false);

	mp_grid_add_rectangle(global.grid, x, y, x+(sprite_width), y+(sprite_height));
}