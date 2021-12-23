event_inherited();


texto_titulo = "Opciones";
color_fondo = make_color_rgb(31,31,31);
alpha_fondo = 0.75;

posXTexto = posXContenido + 20;
posYTexto = posYContenido + 20;


var i = 0;

var cantT = 45;
var e = 1;

buttons[i] = instance_create_depth(right-100,posYTexto+(cantT*e)+10,depth-100,Button);
buttons[i].text = Gestor.sonidoMusica?"Desactivar":"Activar";
buttons[i].onClick = sonido_musicaAD;
buttons[i].objeto_padre = self;
buttons[i].image_xscale = 0.85;
buttons[i].image_yscale = 0.55;
buttons[i].agrandaSeleccion = 0.05;
buttons[i].neonGrosor = 1;
buttons[i].fuente = opciones_font;

i++;
e++;

buttons[i] = instance_create_depth(right-100,posYTexto+(cantT*e)+10,depth-100,Button);
buttons[i].text = Gestor.sonidoEfectos?"Desactivar":"Activar";
buttons[i].onClick = sonido_efectosAD;
buttons[i].objeto_padre = self;
buttons[i].image_xscale = 0.85;
buttons[i].image_yscale = 0.55;
buttons[i].agrandaSeleccion = 0.05;
buttons[i].neonGrosor = 1;
buttons[i].fuente = opciones_font;

i++;
e++;

buttons[i] = instance_create_depth(right-100,botton - 30,depth-100,Button);
buttons[i].text = "Cerrar";
buttons[i].onClick = cerrar_ventana;
buttons[i].objeto_padre = self;
buttons[i].image_xscale = 0.55;
buttons[i].image_yscale = 0.55;
buttons[i].agrandaSeleccion = 0.1;
buttons[i].neonGrosor = 1;
buttons[i].fuente = opciones_font;

