x = obj_player.x
y = obj_player.y
direction = point_direction(x,y,mouse_x,mouse_y)
image_angle = direction

if image_angle > 90 and image_angle < 270
{
	image_yscale = -1
}

else
{
	image_yscale = 1
}