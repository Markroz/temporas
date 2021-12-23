 
if(!mostrado){
	mostrado = true;
	Gestor.amigos1 = true;

	var objeto = instance_create_layer(x,y,"medio",Objeto_gane);
	objeto.texto = "\n\nCada vez estamos mas cerca!!";
	objeto.color = c_white;


	//instance_destroy();

}