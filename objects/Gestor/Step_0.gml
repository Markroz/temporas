/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(room != menu_inicial){
	if(vidas <= 0){
		vidas = 3;
		monedas = 0;
	
		room_restart();
	}
}

switch(room){
	case Nivel1:
		amigos1 = false;
		amigos2 = false;
		amigos3 = false;
		amigos4 = false;
		break;

}