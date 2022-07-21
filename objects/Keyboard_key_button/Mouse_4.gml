/// @description Insert description here
// You can write your code in this editor
clicked_on = 1;
if special = 0 {
	if instance_exists(line_with_text) =true{
		if (keyboard_spawner.text_shifted ) = 0{
			 keyboard_string  = keyboard_string + string(this_key);
		}
		if (keyboard_spawner.text_shifted ) = 1{
			 keyboard_string  = keyboard_string + string_upper(string(this_key));
		}
	}
}

if special = 2 {
	if instance_exists(line_with_text) = true{
		keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);
	}
	
}
if special = 3 {
	instance_destroy(keyboard_spawner);
}
if special = 4 {
	switch (keyboard_spawner.follow_mouse ){
		case 0 : keyboard_spawner.follow_mouse = 1;
		break;
		case 1: keyboard_spawner.follow_mouse = 0;
		break;
	}
}

if special = 1{
	switch (keyboard_spawner.text_shifted ){
		case 0 : keyboard_spawner.text_shifted = 1;
		break;
		case 1: keyboard_spawner.text_shifted = 0;
		break;
	}
	
}
alarm[0] = room_speed /2;			//set repeat check timer