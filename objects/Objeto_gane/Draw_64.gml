/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


draw_set_color(color);
draw_set_font(gui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text((display_get_gui_width()/2),yr,texto + "\nSe murio " + string(Gestor.muertes) + " veces, y salto "+ string(Gestor.saltos) + " veces.\n\nPresiona ENTER o toca la pantalla para continuar!");

