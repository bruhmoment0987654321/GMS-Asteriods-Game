/// @description creating all the particles
partSys = part_system_create();

//exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust,spr_exhaust,false,false,false);
part_type_size(partTypeExhaust,0.4,0.4,0.05,0)
part_type_color3(partTypeExhaust,c_yellow,c_orange,c_red);
part_type_alpha3(partTypeExhaust,1,1,0);
part_type_life(partTypeExhaust,20,20);

partTypeExhaust2 = part_type_create();
part_type_sprite(partTypeExhaust2,spr_exhaust,false,false,false);
part_type_size(partTypeExhaust2,0.4,0.4,0.05,0)
part_type_color3(partTypeExhaust2,c_white,c_fuchsia,c_purple);
part_type_alpha3(partTypeExhaust2,1,1,0);
part_type_life(partTypeExhaust2,20,20);

//debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris,spr_asteroid_debris_strip4,false,false,true);
part_type_life(partTypeAsteroidDebris,60,80);
part_type_alpha3(partTypeAsteroidDebris,0.8,0.8,0);
part_type_direction(partTypeAsteroidDebris,0,359,0,false);
part_type_orientation(partTypeAsteroidDebris,0,359,1,false,false);
part_type_speed(partTypeAsteroidDebris,2,2.4,-0.02,0);




