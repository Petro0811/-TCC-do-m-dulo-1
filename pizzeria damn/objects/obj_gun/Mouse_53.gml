if cd <= 0
{
	with (instance_create_layer(x,y,"instances",obj_bullet))
	{
		speed = 8
		direction = obj_gun.direction
	}
}