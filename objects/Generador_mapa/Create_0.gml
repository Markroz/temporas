
altoMax = 16 * 10;
bajoMax = room_height - (16*5);

largoMax = 6000;


globalvar ground_layerGene, ground_tileGene;

ground_layerGene = layer_create(300);
ground_tileGene = layer_tilemap_create(ground_layerGene, 0, 0, TileSet1, room_width, room_height);


mensajes[0] = -1;