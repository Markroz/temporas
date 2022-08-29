numHalfw = (camera_get_view_width(view_camera[0]));
numHalfh = (camera_get_view_height(view_camera[0]))/2;


psRain = part_system_create();
part_system_automatic_draw(psRain,false);
prtRain = part_type_create();
part_system_depth(prtRain,-100000);
part_type_speed(prtRain,5,16,0,0);
part_type_direction(prtRain,270,275,0,0);
part_type_shape(prtRain,pt_shape_line);
part_type_orientation(prtRain,0,5,0,0,true);
part_type_size(prtRain,0.02,0.15,0,0);
part_type_color_mix(prtRain,c_white,c_teal);
part_type_alpha2(prtRain,0.1,0.8);
part_type_life(prtRain,20,60);
part_type_scale(prtRain,0.75,0.75);



peRain = part_emitter_create(psRain);

part_emitter_stream(psRain,peRain,prtRain,12);