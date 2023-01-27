///@ description initializing bullets
//@arg direction
//@arg speed
//@arg bullet_instance
function initialise_bullet(_obj, _x, _y, _dir, _spd){
    var inst = instance_create_layer(_x, _y, "Instances", _obj);
    with(inst){
        direction = _dir;
        speed = _spd;
	}
}