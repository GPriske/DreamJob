if dragged = 1
{
speed = point_distance(x,y,mouse_x,mouse_y)/2
direction = point_direction(x,y,mouse_x,mouse_y)	
}
else if speed > 0
{
speed = speed/1.2
	if speed < 1
	{speed = 0}
	
	if x > room_width-128 or x <  128
	{
	speed = 10
	direction = point_direction(x,y,room_width/2,y)
	}
	
	if y > room_height-128 or y < 128
	{
	speed = 10
	direction = point_direction(x,y,x,room_height/2)
	}
}

