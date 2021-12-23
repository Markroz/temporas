// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function presiono_tecla(tecla){

	switch(tecla){
		case Gestor_teclas.teclas.direccion:
			if(Gestor_teclas.left || Gestor_teclas.right){
				return true;	
			}
			break;
		case Gestor_teclas.teclas.espacio:
			
				return Gestor_teclas.space;	
			break;
	}
		
	return false;
}

function ponerACero(){
	Gestor_teclas.up = false;
	Gestor_teclas.down = false;
	Gestor_teclas.left = false;
	Gestor_teclas.right = false;

	Gestor_teclas.space = false;
	Gestor_teclas.escape = false;
	Gestor_teclas.enter = false;
	Gestor_teclas.shift = false;
	Gestor_teclas.pause = false;

	Gestor_teclas.dispara = false;
	Gestor_teclas.gatillo = false;

	Gestor_teclas.pressed = false;
	Gestor_teclas.released = false;

	
}