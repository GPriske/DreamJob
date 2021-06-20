
////////////////////////////////////////////////////////////////
//Store tempo relative to delta time//			

//reduce delta_time from micoseconds to a full second
delta = delta_time/1000000 

//Allows audio system to function independent of the frame rate.
tempo = (delta*60)/bpm 
tempox2 = tempo*2
tempox4 = tempo*4
tempox05 = tempo/2
tempox025 = tempo/4
////////////////////////////////////////////////////////////////

delta_frame = delta/target_delta

///// Check if audio and 
trackpos = (trackpos+(delta_frame/30)) mod audio_sound_length(audio_track1)

if floor(audio_sound_get_track_position(audio_track1)) != floor(trackpos)
{
off += 1
audio_sound_set_track_position(audio_track1,trackpos)
}

//soundpos = audio_sound_get_track_position(audio_track1)