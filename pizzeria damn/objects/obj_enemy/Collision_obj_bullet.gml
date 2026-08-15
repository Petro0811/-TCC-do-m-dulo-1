if life > 0
{
	instance_destroy(other)
	life -= 1
	
	if life <= 0
	{
		despawncd = despawncdvalue
		state = "dead"
	}
}