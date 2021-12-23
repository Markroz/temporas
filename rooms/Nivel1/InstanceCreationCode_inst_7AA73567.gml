detener = true;

mensajes[0] = instance_create_depth(x,y,depth,Mensaje);
mensajes[0].texto = "Rey! rey! rey!\n";
mensajes[0].objeto = ada;
mensajes[0].color = c_aqua;
mensajes[0].detener = detener;
mensajes[0].tiempo = room_speed * 1.5;

mensajes[1] = instance_create_depth(x,y,depth,Mensaje);
mensajes[1].texto = "TAIGENDAA!\n";
mensajes[1].objeto = ada;
mensajes[1].color = c_aqua;
mensajes[1].detener = detener;
mensajes[1].tiempo = room_speed * 0.5;

mensajes[2] = instance_create_depth(x,y,depth,Mensaje);
mensajes[2].texto = "TAIGENDAAAAA!!!!!!!\n";
mensajes[2].objeto = ada;
mensajes[2].color = c_aqua;
mensajes[2].detener = detener;
mensajes[2].tiempo = room_speed * 0.8;

mensajes[3] = instance_create_depth(x,y,depth,Mensaje);
mensajes[3].texto = "ya callese!!!";
mensajes[3].objeto = Personaje;
mensajes[3].detener = detener;
mensajes[3].tiempo = room_speed * 1.25;

mensajes[4] = instance_create_depth(x,y,depth,Mensaje);
mensajes[4].texto = "Que paso!?";
mensajes[4].objeto = Personaje;
mensajes[4].tiempo = room_speed * 1;
mensajes[4].detener = detener;

mensajes[5] = instance_create_depth(x,y,depth,Mensaje);
mensajes[5].texto = "Una emergencia!!\n";
mensajes[5].objeto = ada;
mensajes[5].tiempo = room_speed * 1;
mensajes[5].detener = detener;

mensajes[6] = instance_create_depth(x,y,depth,Mensaje);
mensajes[6].texto = "Han robado!!!\nEl arma suprema!!!";
mensajes[6].objeto = ada;
mensajes[6].tiempo = room_speed * 1.25;
mensajes[6].detener = detener;

mensajes[7] = instance_create_depth(x,y,depth,Mensaje);
mensajes[7].texto = "Y que quieres que haga?";
mensajes[7].objeto = Personaje;
mensajes[7].tiempo = room_speed * 1.25;
mensajes[7].detener = detener;

mensajes[8] = instance_create_depth(x,y,depth,Mensaje);
mensajes[8].texto = "Son cosas que pasan";
mensajes[8].objeto = Personaje;
mensajes[8].tiempo = room_speed * 1;
mensajes[8].detener = detener;

mensajes[9] = instance_create_depth(x,y,depth,Mensaje);
mensajes[9].texto = "rey....\n";
mensajes[9].objeto = ada;
mensajes[9].tiempo = room_speed * 1;
mensajes[9].detener = detener;

mensajes[10] = nuevo_mensaje("Es la espada....\n",ada,1,detener);
mensajes[11] = nuevo_mensaje("Pos si...",Personaje,1,detener);
mensajes[12] = nuevo_mensaje("Es mi espada...",Personaje,1,detener);
mensajes[13] = nuevo_mensaje("Y que?",Personaje,1,detener);
mensajes[14] = nuevo_mensaje("Debemos hacer algo\nSolo tu puedes recuperarla!\n",ada,1.8,detener);
mensajes[15] = nuevo_mensaje("Ya ya",Personaje,0.5,detener);
mensajes[16] = nuevo_mensaje("Quien se la llevo?",Personaje,1.25,detener);
mensajes[17] = nuevo_mensaje("Un enfermo...",ada,1,detener);
mensajes[18] = nuevo_mensaje("Pos si...",Personaje,1.20,detener);
mensajes[19] = nuevo_mensaje("No se ni para que presunto...",Personaje,1.6,detener);
mensajes[20] = nuevo_mensaje("Bueno ya...",Personaje,1,detener);
mensajes[21] = nuevo_mensaje("Comencemos :D",Personaje,1,detener);
mensajes[22] = nuevo_mensaje("Esta bien...",ada,1,detener);
mensajes[23] = nuevo_mensaje("Para empezar muevete",ada,1.5,detener);
mensajes[24] = nuevo_mensaje("Ve hacia esa escalera",ada,1.5,detener);
mensajes[25] = nuevo_mensaje_tecla("Puedes moverte usando A o D",ada,Gestor_teclas.teclas.direccion,false);

