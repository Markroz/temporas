color_fondo = c_black;
alpha_fondo = 1;
color_texto_titulo = c_white;
fuente = botones;

focus = true;
ventana_padre = -1;

ancho = 500;
alto = 500;

posX = display_get_gui_width()/2;
posY = display_get_gui_height()/2;

posXRaw = posX - (ancho/2);
posYRaw = posY - (alto/2);

posXTitulo = posXRaw + 10;
posYTitulo = posYRaw + 10;

posXContenido = posXRaw+35;
posYContenido = posYRaw+35;

botton = posYRaw + alto;
right = posXRaw + ancho;


depth = -10000;

texto_titulo = "Ventana Prueba";

//botones
buttons[0] = -1;
index = 0;
sound_id = -1;


