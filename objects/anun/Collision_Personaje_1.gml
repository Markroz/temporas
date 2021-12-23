/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(!mostrado){
	mostrado = true;
	
	var objeto = instance_create_layer(x,y,"medio",Anuncios);
	objeto.paginas[0] = "Hola, se que el nivel pide un nivel de destreza mayor\n\nSin embargo, llegaste hasta aca....";
	objeto.paginas[1] = "\n\nFelicidades...";
	objeto.paginas[2] = "Ya solo queda un nivel...\nSigue asi!";
	objeto.paginas[3] = "Relajate un rato antes de continuar\nEl proximo nivel sera de chill...";
	
	instance_destroy();
}