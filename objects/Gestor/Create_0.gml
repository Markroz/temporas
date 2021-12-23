/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.ubicacion_muerte_x = 0;
global.ubicacion_muerte_y = 0;

vidas = 3;
monedas = 0;

amigos1 = false;
amigos2 = false;
amigos3 = false;
amigos4 = false;

musica_actual = -1;

detenido = false;
no_cae = false;

pausa = false;

saltos = 0;
muertes = 0;

sonidoMusica = true;
sonidoEfectos = true;

instance_create_depth(x,y,depth,Gestor_teclas);