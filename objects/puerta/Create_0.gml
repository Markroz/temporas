mostrado = false;

globalvar ground_layer1, ground_tile1;

ground_layer1 = layer_create(305);
ground_tile1 = layer_tilemap_create(ground_layer1, 0, 0, TileSet2, room_width, room_height);

tilemap_set_at_pixel(ground_tile1,414, x, y);
tilemap_set_at_pixel(ground_tile1,415, x+16, y);
tilemap_set_at_pixel(ground_tile1,416, x+32, y);
tilemap_set_at_pixel(ground_tile1,417, x+48, y);

tilemap_set_at_pixel(ground_tile1,444, x, y+16);
tilemap_set_at_pixel(ground_tile1,445, x+16, y+16);
tilemap_set_at_pixel(ground_tile1,446, x+32, y+16);
tilemap_set_at_pixel(ground_tile1,447, x+48, y+16);

tilemap_set_at_pixel(ground_tile1,474, x, y+32);
tilemap_set_at_pixel(ground_tile1,475, x+16, y+32);
tilemap_set_at_pixel(ground_tile1,476, x+32, y+32);
tilemap_set_at_pixel(ground_tile1,477, x+48, y+32);

tilemap_set_at_pixel(ground_tile1,504, x, y+48);
tilemap_set_at_pixel(ground_tile1,505, x+16, y+48);
tilemap_set_at_pixel(ground_tile1,506, x+32, y+48);
tilemap_set_at_pixel(ground_tile1,507, x+48, y+48);

tilemap_set_at_pixel(ground_tile1,534, x, y+64);
tilemap_set_at_pixel(ground_tile1,535, x+16, y+64);
tilemap_set_at_pixel(ground_tile1,536, x+32, y+64);
tilemap_set_at_pixel(ground_tile1,537, x+48, y+64);

