
//// Left Click Inputs
if mouse_check_button(mb_left)
{hold_lmb = 1}
else if mouse_check_button_released(mb_left)
{hold_lmb = 0}


// Dev Tools
if keyboard_check(ord("R"))
{room_restart()}

if keyboard_check_pressed(vk_escape)
{game_end()}
