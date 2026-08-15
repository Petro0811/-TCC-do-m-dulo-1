if cd <= 0 && global.ammo_pistol >= 1 && obj_player.state = "free"
{
	global.ammo_pistol -= 1
	with (instance_create_layer(x,y,"instances",obj_bullet))
	{
		speed = 10
		direction = obj_gun.direction
	}
}