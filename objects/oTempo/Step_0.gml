
////////////////////////////////////////////////////////////////
// Store tempo relative to delta time //			

//reduce delta_time from micoseconds to a full second
delta = delta_time/1000000 

delta_frame = delta/target_delta

//Allows audio system to function independent of the frame rate.
tempo = (delta_frame)/bpm 
tempox4 = tempo*2
tempox8 = tempo*16
tempox16 = tempo*16
tempox05 = tempo/2
tempox025 = tempo/4
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Check/correct tempo code alignment with audio track //

trackpos = (trackpos+(delta_frame/60)) mod audio_sound_length(audio_track1)

if floor(audio_sound_get_track_position(audio_track1)) != floor(trackpos)
{
off += 1
audio_sound_set_track_position(audio_track1,trackpos)
}
/////////////////////////////////////////////////////////////////
scr_input()
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
// Draggables //

if instance_exists(oDragables)
{
	if hold_lmb = true
	{
		if place_meeting(mouse_x,mouse_y,oDragables)
		{
			if dragger = self
			{
			dragger = instance_place(mouse_x,mouse_y,oDragables)
			dragger.dragged = 1
			}
		}	
	}
	else
	{
	dragger.dragged = 0
	dragger = self	
		if place_meeting(mouse_x,mouse_y,oDragables)
		{
			with instance_place(mouse_x,mouse_y,oDragables)
			{
			image_xscale = min(image_xscale+0.05,1.2)
			image_yscale = min(image_yscale+0.05,1.2)
			
			}
		}
	}
}