

draw_set_alpha(alpha_fondo);
draw_set_color(color_fondo);

draw_roundrect(posX - (ancho/2),posY - (alto/2),posX + (ancho/2),posY + (alto/2),false);

draw_set_alpha(1);

draw_set_font(fuente);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//titulo
draw_set_color(color_texto_titulo);
draw_text(posXTitulo,posYTitulo,texto_titulo);
draw_line_width(posXRaw,posYRaw+32,posXRaw+ancho,posYRaw+32,2.5);

//contenido 


draw_text(right - 120,botton - 25,"Pie pagina");