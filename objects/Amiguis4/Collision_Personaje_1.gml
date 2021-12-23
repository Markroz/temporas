/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
 
if(!mostrado){
	mostrado = true;
	Gestor.amigos4 = true;

	var objeto = instance_create_layer(x,y,"medio",Objeto_gane);
	Objeto_gane.color = c_white;
	objeto.texto = "\n\nTripulante: Hola capitan\nCapitan: Hola, solo tu faltabas\n\nCapitan: ¡vamos a casa!\n\n";


	//instance_destroy();

}