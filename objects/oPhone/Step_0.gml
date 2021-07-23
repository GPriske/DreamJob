
//if keyboard_check_pressed(ord("Y"))


if scene = 1
{
	if level = 1
	{
	chars = 3
	var shape = 0
	var ranx = irandom_range(room_width/2,room_width-256)
	var rany = irandom_range(256,room_height-256)
		
		repeat(chars)
		{	
			with instance_create_depth(ranx,rany,1,oDragables)
			{image_index = shape}
		ranx = irandom_range(room_width/2,room_width-256)
		rany = irandom_range(256,room_height-256)
		shape += 1
		}
	level = 0
	}
}
