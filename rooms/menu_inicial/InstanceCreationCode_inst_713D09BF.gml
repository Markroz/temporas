x = display_get_gui_width()/2;

espacio = 70;

buttons[0] = instance_create_depth(x,y,depth-50,Button);
buttons[0].text = "Jugar";
buttons[0].onClick = iniciar_juego;
buttons[0].image_xscale = 1;
buttons[0].image_yscale = 0.75;
buttons[0].agrandaSeleccion = 0.1;
buttons[0].neonGrosor = 2;

buttons[1] = instance_create_depth(x,y+(espacio*1),depth-50,Button);
buttons[1].text = "Opciones";
buttons[1].onClick = abrir_ventana_opciones;
buttons[1].image_xscale = 1;
buttons[1].image_yscale = 0.75;
buttons[1].agrandaSeleccion = 0.1;
buttons[1].neonGrosor = 2;

buttons[2] = instance_create_depth(x,y+(espacio*2),depth-50,Button);
buttons[2].text = "Salir";
buttons[2].onClick = cerrar_juego;
buttons[2].image_xscale = 1;
buttons[2].image_yscale = 0.75;
buttons[2].agrandaSeleccion = 0.1;
buttons[2].neonGrosor = 2;