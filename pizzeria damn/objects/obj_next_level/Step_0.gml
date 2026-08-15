switch(state)
{
	
	case "closed":
	
	sprite_index = spr_next_level_locked

	if instance_exists(obj_enemy) == 0
	{
		state = "open"
	}
	
	break;
	
	case "open":
	
	sprite_index = spr_collision
	
	if instance_exists(obj_enemy) >= 1
	{
		state = "closed"
	}
	
	break;

}