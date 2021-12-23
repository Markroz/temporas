// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function pj_es_parado(){
	image_speed = 0;
	sprite_index = pj_de_pie;
}

function pj_es_saltando(){
	
	image_speed = 0;
	sprite_index = pj_salta;
}

function pj_es_cayendo(){
	
	image_speed = 0;
	sprite_index = pj_cae;
}

function pj_es_caminando(){
	
	image_speed = 1;
	sprite_index = pj_camina;
}