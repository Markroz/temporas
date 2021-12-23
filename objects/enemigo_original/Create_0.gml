/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//gravity_direction = 280;

//gravity = 0.4;
event_inherited();

solid = false;
no_cabeza = true;
no_se_mueve = false;
enum estados_en {
	depie,
	saltando,
	caminando,
	cayendo
}

vv = 0;

estado = estados_en.depie;

en_salto = false;

rango = 250;

mover = choose(-1,1);
velocidad = random_range(0.25,2);

mo2 = false;

gravedad = true;
vertical = false;

cae_ingremento = false;
cae_ingre = 0;

sube_disminuir = false;
sube_dismi = 0;
