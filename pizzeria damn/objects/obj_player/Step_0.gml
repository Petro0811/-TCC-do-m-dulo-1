obj_gun.depth = -y
depth = -y

switch(state)
{

case "free":

up = keyboard_check(vk_up)
down = keyboard_check(vk_down)
right = keyboard_check(vk_right)
left = keyboard_check(vk_left)

hsp = (right - left) * spd
vsp = (down - up) * spd

var layer_sequenceid = layer_get_id("sequences")

if place_meeting(x,y,obj_next_level) && obj_next_level.state = "open"
{
	state = "incutscene"
	hsp = 0
	vsp = 0
	layer_sequence_create(layer_sequenceid,x,y,sqc_transition_start)

}

var enemy = instance_place(x, y, obj_enemy);

if (enemy != noone && enemy.state == "attack")
{
    global.life -= 1
}


break;

case "incutscene":

break;

}