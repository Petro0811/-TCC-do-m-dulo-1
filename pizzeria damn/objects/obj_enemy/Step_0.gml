if obj_player.state = "spawn" or obj_player.state = "incutscene"
{
	depth = 0
}

else
{
	depth = -y
}

switch(state)
{
	case "finding_player":
	
	if point_distance(x,y,obj_player.x,obj_player.y) < 250
	{
		state = "chasing"
	}
	
	break;
	
	case "chasing":
	
	direction = point_direction(x,y,obj_player.x,obj_player.y)

	spd = 2.5

	var _xpass = lengthdir_x(spd, direction)
	var _ypass = lengthdir_y(spd, direction)

	if (place_meeting(x + sign(_xpass),y,obj_collision))
	{
		while (!place_meeting(x + sign(_xpass),y,obj_collision))
		{
			x += sign(_xpass)
		}
		_xpass = 0
	}
	x += _xpass

	if (place_meeting(x,y + sign(_ypass),obj_collision))
	{
		while (!place_meeting(x,y + sign(_ypass),obj_collision))
		{
			y += sign(_ypass)
		}
		_ypass = 0
	}
	y += _ypass
	
	if point_distance(x,y,obj_player.x,obj_player.y) <= 50 && cd <= 0
	{
		attackingcd = attackingcdvalue
		state = "attacking"
	}
	
	if direction > 90 && direction < 270
	{
		image_xscale = -1
	}
	
	else
	{
		image_xscale = 1
	}
	
	break;
	
	case "attacking":
	
	attackingcd --;
	
	if attackingcd <= 0
	{
		state = "attack"
		mask_index = spr_enemy_attack
	}
	
	
	break;
	
	case "attack":
	
	cd = cdvalue
	mask_index = spr_enemy
	state = "chasing"
	
	break;
	
	
	
	
	case "dead":
	
	if despawncd <= 0
	{
		instance_destroy()
	}
	
	break;

}

despawncd --;
cd --;